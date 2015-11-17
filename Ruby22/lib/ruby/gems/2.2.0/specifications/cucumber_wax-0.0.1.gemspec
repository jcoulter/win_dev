# -*- encoding: utf-8 -*-
# stub: cucumber_wax 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber_wax"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Miller"]
  s.date = "2015-02-25"
  s.description = "Protect your cukes by finding Thens without any assertions"
  s.email = ["Daniel.J.Miller@sherwin.com"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Protect your cukes by finding Thens without any assertions"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
