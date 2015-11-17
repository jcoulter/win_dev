# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "kendo-page-object-widgets"
  spec.version       = KendoPageObjectWidgets::VERSION
  spec.authors       = ["Mosaic Team"]
  spec.email         = ["mosaic.development@sherwin.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Kendo Widgets}
  spec.description   = %q{This gem adds kendo widgets to your page-objects}
  spec.homepage      = "http://github.sherwin.com/kxm827/kendo-page-object-widgets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "cucumber", "=1.3"
  spec.add_development_dependency "rspec"
  spec.add_dependency "page-object"
  spec.add_dependency "require_all"
end
