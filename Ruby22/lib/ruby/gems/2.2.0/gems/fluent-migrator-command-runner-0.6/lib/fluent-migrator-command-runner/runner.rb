module FluentMigratorCommandRunner
  class Runner

    def self.execute(command)
      Kernel.system(command)
      raise 'Fluent Migrator Failed' unless fluent_migrator_run_succeeded?
    end

    private

    def self.fluent_migrator_run_succeeded?
      $?.exitstatus == 0
    end

  end
end


