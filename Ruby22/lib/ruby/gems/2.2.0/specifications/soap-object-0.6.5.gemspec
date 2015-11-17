# -*- encoding: utf-8 -*-
# stub: soap-object 0.6.5 ruby lib

Gem::Specification.new do |s|
  s.name = "soap-object"
  s.version = "0.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeffrey S. Morgan", "Doug Morgan"]
  s.date = "2015-06-03"
  s.description = "Wrapper around SOAP service calls to make it easy to test"
  s.email = ["jeff.morgan@leandog.com", "douglas.morgan3405@gmail.com"]
  s.homepage = "http://github.com/cheezy/soap-object"
  s.rubygems_version = "2.4.5.1"
  s.summary = "Wrapper around SOAP service calls to make it easy to test"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<savon>, [">= 2.2.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.2.0"])
    else
      s.add_dependency(%q<savon>, [">= 2.2.0"])
      s.add_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_dependency(%q<cucumber>, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<savon>, [">= 2.2.0"])
    s.add_dependency(%q<rspec>, [">= 2.12.0"])
    s.add_dependency(%q<cucumber>, [">= 1.2.0"])
  end
end
