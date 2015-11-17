# -*- encoding: utf-8 -*-
# stub: fig_newton 0.11 ruby lib

Gem::Specification.new do |s|
  s.name = "fig_newton"
  s.version = "0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeff Morgan", "Steve Jackson"]
  s.date = "2014-12-19"
  s.description = "Provides a simple mechanism to maintain and use different configurations stored in yml files."
  s.email = ["jeff.morgan@leandog.com", "steve.jackson@leandogsoftware.com"]
  s.homepage = "http://github.com/cheezy/fig_newton"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Provides a simple mechanism to maintain and use different configurations stored in yml files."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yml_reader>, [">= 0.3"])
      s.add_development_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.2.0"])
    else
      s.add_dependency(%q<yml_reader>, [">= 0.3"])
      s.add_dependency(%q<rspec>, [">= 2.12.0"])
      s.add_dependency(%q<cucumber>, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<yml_reader>, [">= 0.3"])
    s.add_dependency(%q<rspec>, [">= 2.12.0"])
    s.add_dependency(%q<cucumber>, [">= 1.2.0"])
  end
end
