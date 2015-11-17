#Fluent-Migrator-Command-Runner

Build and run fluent migrator commands from ruby with ease. 

#Installation

gem install fluent-migrator-command-runner

#Setup

FigNewton file (ex. local.yml) should be loaded before use.  
[FigNewton will automatically load file if ENV['FIG_NEWTOW_FILE'] is set]  

The FigNewton file should have atleast the following nodes. 

````
path_to_migration_assembly: ../Path/To/Migrations.dll
path_to_migrator_exe: ../Path/to/migrate.exe

database:
  adapter: oracle_enhanced
  database: "TNS.world"
  username: "SCHEMA_USER_NAME"
  password: "p4ssw0rd"
````

#Using exposed rake task

Migrate with no tags or profiles

````ruby
FluentMigratorCommandRunner::Rake::Task.new(:migrate)
````

Migrate with profile, tag, and select a fig newton file

````ruby
FluentMigratorCommandRunner::Rake::Task.new(:migrate) do |t|
	  t.fig_newton_file = 'local.yml'
      t.profile = 'TestData'
      t.tag = 'Tag'
    end
````

#Future Enhancements
	- be able to run with multiple tags

#Notes
	Has only been tested with FluentMigrator.Tools.1.1.2.1