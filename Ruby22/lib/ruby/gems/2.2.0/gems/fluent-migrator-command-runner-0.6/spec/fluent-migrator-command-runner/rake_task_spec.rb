require 'spec_helper'

describe FluentMigratorCommandRunner::Rake::Task do

	after{ Rake.application.clear}

	context 'defining task' do
		it 'should define rake task named' do
			expected_task_name = 'my_rake_task'
			FluentMigratorCommandRunner::Rake::Task.new(expected_task_name)
			expect(::Rake::Task[expected_task_name]).to_not equal(nil)
		end
	end

	context 'invoking task' do
		let(:builder){FluentMigratorCommandRunner::CommandBuilder}
		let(:runner){FluentMigratorCommandRunner::Runner}
		before { allow(builder).to receive(:build)}
		before { allow(runner).to receive(:execute)}
		before { allow(FigNewton).to receive(:load)}
		let(:default_task_name){'my_rake_task'}


		it 'should migrate the database' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task

			expect(builder).to have_received(:build)
		end

		it 'should execute command' do
			command = "BuildCommmand"
			allow(builder).to receive(:build).and_return(command)
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task

			expect(runner).to have_received(:execute).with(command)
		end

		it 'should accept profile option' do
			expected_profile = 'my_profile'
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name) do |task|
				task.profile = expected_profile
			end
			invoke_rake_task

			expect(builder).to have_received(:build).with(hash_including(:profile => expected_profile))
		end

		it 'should not pass profile option when nil' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task

			expect(builder).to_not have_received(:build).with(hash_including(:profile => nil))
		end

		it 'should accept tag option' do
			expected_tag = 'tag'
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name) do |task|
				task.tag = expected_tag
			end
			invoke_rake_task

			expect(builder).to have_received(:build).with(hash_including(:tag => expected_tag))
		end

		it 'should not pass tag option when nil' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task

			expect(builder).to_not have_received(:build).with(hash_including(:tag => nil))
		end

		it 'should accept password argument' do
			expected_password = 'my_password'
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task_with_password(expected_password)

			expect(builder).to have_received(:build).with(hash_including(:db_password => expected_password))
		end

		it 'should not pass password option when rake is invoked with out password' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)
			invoke_rake_task

			expect(builder).to_not have_received(:build).with(hash_including(:db_password => nil))
		end

		it 'should load the fig newton file when option given' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name) do |task|
				task.fig_newton_file ='fignewton.yml'
			end

			invoke_rake_task
			expect(FigNewton).to have_received(:load).with("fignewton.yml")
		end

		it 'should not load fignewton file' do
			FluentMigratorCommandRunner::Rake::Task.new(default_task_name)

			invoke_rake_task
			expect(FigNewton).to_not have_received(:load)
		end

	end

	private

	def invoke_rake_task
		::Rake::Task[default_task_name].invoke
	end


	def invoke_rake_task_with_password(password)
		::Rake::Task[default_task_name].invoke(password)
	end
end
