module FluentMigratorCommandRunner
	class OracleMigrationCommand
		attr_reader 	:path_to_migrator,
						:path_to_migration_assembly,
						:connection_information,
						:profile,
						:tag,
            :provider

    PARAMETER_PREFIX = '--'
    SPACE_CHAR = "\s"

    MIGRATOR_DELIMITER = "#{SPACE_CHAR + PARAMETER_PREFIX}"
    CONNECTION_STRING_DELIMITER = ';'

		def initialize(options = {})
			@profile = options[:profile] unless options[:profile].nil?
			@tag = options[:tag] unless options[:tag].nil?
      @provider = FigNewton.migration_provider('oracle')
      @path_to_migrator = FigNewton.path_to_migrator_exe
			@path_to_migration_assembly = FigNewton.path_to_migration_assembly
			@connection_information = FigNewton.database.to_hash
			@connection_information['password'] = options[:db_password] unless options[:db_password].nil?
		end

		def build
			connection_string = build_connection_string(@connection_information)

			command_sections = []
			command_sections.push(@path_to_migrator)
      command_sections.push("provider #{@provider}")
      command_sections.push("conn \"#{connection_string}\"")
			command_sections.push('task migrate')
      command_sections.push("assembly \"#{@path_to_migration_assembly}\"")
      command_sections.push("tag #{@tag}") if @tag
			command_sections.push("profile=#{@profile}") if @profile
			command_sections.join(MIGRATOR_DELIMITER)
		end

		private

		def build_connection_string(connection_information)
			connection = []
			connection.push("DATA SOURCE=#{connection_information['database']}")
			connection.push("user id=#{connection_information['username']}")
			connection.push("password=#{connection_information['password']}")
			connection.join(CONNECTION_STRING_DELIMITER)
		end

	end
end