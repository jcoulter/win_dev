require 'spec_helper'
require 'active_record/connection_adapters/oracle_enhanced_database_tasks'
require 'stringio'
require 'tempfile'

describe "Oracle Enhanced adapter database tasks" do
  let(:config) { CONNECTION_PARAMS.with_indifferent_access }

  describe "create" do
    let(:new_user_config) { config.merge({username: "oracle_enhanced_test_user"}) }
    before do
      fake_terminal(SYSTEM_CONNECTION_PARAMS[:password]) do
        ActiveRecord::Tasks::DatabaseTasks.create(new_user_config)
      end
    end
    it "creates user" do
      query = "SELECT COUNT(*) FROM dba_users WHERE UPPER(username) = '#{new_user_config[:username].upcase}'"
      ActiveRecord::Base.connection.select_value(query).should == 1
    end
    after do
      ActiveRecord::Base.connection.execute("DROP USER #{new_user_config[:username]}");
    end

    def fake_terminal(input)
      $stdin = StringIO.new
      $stdout = StringIO.new
      $stdin.puts(input)
      $stdin.rewind
      yield
    ensure
      $stdin = STDIN
      $stdout = STDOUT
    end
  end

  context "with test table" do
    before do
      ActiveRecord::Base.establish_connection(CONNECTION_PARAMS)
      ActiveRecord::Base.connection.execute "CREATE TABLE test_posts (name VARCHAR2(20))"
    end

    describe "drop" do
      before { ActiveRecord::Tasks::DatabaseTasks.drop(config) }
      it "drops all tables" do
        ActiveRecord::Base.connection.table_exists?(:test_posts).should be_false
      end
    end

    describe "purge" do
      before { ActiveRecord::Tasks::DatabaseTasks.purge(config) }
      it "drops all tables" do
        ActiveRecord::Base.connection.table_exists?(:test_posts).should be_false
        ActiveRecord::Base.connection.select_value("SELECT COUNT(*) FROM RECYCLEBIN").should == 0
      end
    end

    describe "structure" do
      let(:temp_file) { Tempfile.new(["oracle_enhanced", ".sql"]).path }
      before { ActiveRecord::SchemaMigration.create_table }

      describe "structure_dump" do
        before { ActiveRecord::Tasks::DatabaseTasks.structure_dump(config, temp_file) }
        it "dumps the database structure to a file" do
          contents = File.read(temp_file)
          contents.should include('CREATE TABLE "TEST_POSTS"')
        end
      end

      describe "structure_load" do
        before do
          ActiveRecord::Tasks::DatabaseTasks.structure_dump(config, temp_file)
          ActiveRecord::Tasks::DatabaseTasks.drop(config)
          ActiveRecord::Tasks::DatabaseTasks.structure_load(config, temp_file)
        end
        it "loads the database structure from a file" do
          ActiveRecord::Base.connection.table_exists?(:test_posts).should be_true
        end
      end

      after do
        File.delete(temp_file)
        ActiveRecord::SchemaMigration.drop_table
      end
    end

    after { ActiveRecord::Base.connection.execute "DROP TABLE test_posts" rescue nil }
  end
end

