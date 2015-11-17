require 'fig_newton'
require 'rake'

require File.dirname(__FILE__) + "/runner"
require File.dirname(__FILE__) + "/command_builder"


module FluentMigratorCommandRunner
	module Rake
		class Task
			include ::Rake::DSL

			attr_accessor :fig_newton_file
			attr_accessor :profile
			attr_accessor :tag

			def initialize(task_name)
				@task_name = task_name

				yield self if block_given?

				define_task
			end

			def define_task
				task @task_name, [:password] do |t, params|
					FigNewton.load(@fig_newton_file) unless @fig_newton_file.nil?
					options = migration_options
					options[:db_password] = params[:password] unless params[:password].nil?
					command = CommandBuilder.build(options)
					Runner.execute(command)
				end
			end

			def migration_options
				options = {}
				options[:profile] = profile unless profile.nil?
				options[:tag] = tag unless tag.nil?
				return options
			end

		end
	end
end