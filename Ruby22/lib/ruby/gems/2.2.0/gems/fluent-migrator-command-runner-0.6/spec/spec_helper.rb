$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec/mocks'
require 'rspec'
require 'fluent-migrator-command-runner'
require 'rake'