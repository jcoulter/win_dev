# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_wax/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber_wax"
  spec.version       = CucumberWax::VERSION
  spec.authors       = ["Dan Miller"]
  spec.email         = ["Daniel.J.Miller@sherwin.com"]
  spec.description   = %q{Protect your cukes by finding Thens without any assertions}
  spec.summary       = %q{Protect your cukes by finding Thens without any assertions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_dependency "rake"
end
