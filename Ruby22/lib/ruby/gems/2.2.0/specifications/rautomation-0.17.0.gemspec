# -*- encoding: utf-8 -*-
# stub: rautomation 0.17.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rautomation"
  s.version = "0.17.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jarmo Pertman"]
  s.date = "2014-11-11"
  s.description = "RAutomation is a small and easy to use library for helping out to automate windows and their controls\nfor automated testing.\n\nRAutomation provides:\n* Easy to use and user-friendly API (inspired by Watir http://www.watir.com)\n* Cross-platform compatibility\n* Easy extensibility - with small scripting effort it's possible to add support for not yet\n  supported platforms or technologies"
  s.email = "jarmo.p@gmail.com"
  s.homepage = "http://github.com/jarmo/RAutomation"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Automate windows and their controls through user-friendly API with Ruby"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.9.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.9.0"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.9.0"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
