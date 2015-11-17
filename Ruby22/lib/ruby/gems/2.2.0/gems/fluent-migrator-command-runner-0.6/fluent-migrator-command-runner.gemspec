require File.expand_path('../lib/fluent-migrator-command-runner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'fluent-migrator-command-runner'
  gem.date        = '2014-11-11'
  gem.description = "Build and Execute Fluent Migrator Commands"
  gem.authors     = ["Mosaic"]
  gem.email       = 'mosaic.development@sherwin.com'
  gem.homepage    = 'Internal @ SherwinWilliams'
  gem.summary 	  = "Rake Tasks For Fluent Migrator"
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.version     = FluentMigratorCommandRunner::VERSION
  gem.homepage    = ''
  gem.license     = 'MIT'
  gem.add_dependency 'fig_newton'
end