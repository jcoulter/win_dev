module FluentMigratorCommandRunner

  class CommandBuilder

   def self.build(migration_options = {})
   	command = OracleMigrationCommand.new(migration_options)
   	command.build
   end

  end
end