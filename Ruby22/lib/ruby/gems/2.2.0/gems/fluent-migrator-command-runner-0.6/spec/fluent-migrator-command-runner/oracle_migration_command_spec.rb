require 'spec_helper'
require 'socket'

describe FluentMigratorCommandRunner::OracleMigrationCommand do

  before do
    @connection_information = {
        'database' => '',
        'username' => '',
        'password' => ''
    }
    allow(FigNewton).to receive(:database).and_return(@connection_information)
    allow(FigNewton).to receive(:path_to_migration_assembly)
    allow(FigNewton).to receive(:path_to_migrator_exe)
    allow(FigNewton).to receive(:migration_provider)
  end

  describe 'initialize' do

    it "should include profile when provided" do
      expected_profile = "--profile=TestData"
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new({:profile => 'TestData'}).build
      expect(command).to include(expected_profile)
    end

    it "should not include profile when not provided" do
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new.build
      expect(command).to_not include('--profile')
    end

    it "should include tag when provided" do
      expected_tag = "--tag Data"
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new({:tag => 'Data'}).build
      expect(command).to include(expected_tag)
    end

    it "should not include tag when not provided" do
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new.build
      expect(command).to_not include('--tag')
    end

    it 'should override password' do
      expected_password = 'my_new_password'
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new({:db_password => expected_password}).build
      expect(command).to include(expected_password)
    end

    it "should allow overriding of default provider" do
      expected_provider = 'mynewprovider'
      allow(FigNewton).to receive(:migration_provider).and_return(expected_provider)
      command = FluentMigratorCommandRunner::OracleMigrationCommand.new.build
      expect(command).to include("--provider #{expected_provider}")
    end
  end

  describe "build" do
    let(:oracle_command) { FluentMigratorCommandRunner::OracleMigrationCommand.new }

    it "should include path to migrator" do
      expected = "/My/Path/To/Migrator"
      allow(FigNewton).to receive(:path_to_migrator_exe).and_return(expected)

      command = oracle_command.build
      expect(command).to include(expected)
    end

    it "should include default provider" do
      oracle_command.build
      expect(FigNewton).to have_received(:migration_provider).with('oracle')
    end

    it "should include path to assembly" do
      expected = "--assembly \"/My/Path/To/Assembly\""
      allow(FigNewton).to receive(:path_to_migration_assembly).and_return('/My/Path/To/Assembly')

      command = oracle_command.build
      expect(command).to include(expected)
    end

    it "should include task" do
      expected_task = "--task migrate"
      command = oracle_command.build
      expect(command).to include(expected_task)
    end

    it "should include connection string" do
      command = oracle_command.build()
      expect(command).to include('--conn ')
    end

    describe "database connection string" do

      it "should include DATA SOURCE in connection string" do
        expected = 'MYDATA.world'
        @connection_information['database'] = expected
        command = oracle_command.build
        expect(command).to include "DATA SOURCE=#{expected}"
      end

      it "should include user name in connection string" do
        expected = 'user'
        @connection_information['username'] = expected
        command = oracle_command.build
        expect(command).to include "user id=#{expected}"
      end

      it "should include password in connection string" do
        expected = 'MyPassword'
        @connection_information['password'] = expected
        command = oracle_command.build
        expect(command).to include "password=#{expected}"
      end
    end

  end
end
