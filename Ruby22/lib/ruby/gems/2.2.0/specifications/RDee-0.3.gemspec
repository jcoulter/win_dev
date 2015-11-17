# -*- encoding: utf-8 -*-
# stub: RDee 0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "RDee"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeffrey S. Morgan"]
  s.date = "2014-09-09"
  s.description = "Dynamically create a connection for Selenium or Watir selecting the browser, version, and host os."
  s.email = ["jeff.morgan@leandog.com"]
  s.homepage = "https://github.com/cheezy/RDee"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Dynamically create a connection for Selenium or Watir."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<watir-webdriver>, [">= 0.6.10"])
      s.add_runtime_dependency(%q<net-http-persistent>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<page-object>, [">= 0"])
    else
      s.add_dependency(%q<watir-webdriver>, [">= 0.6.10"])
      s.add_dependency(%q<net-http-persistent>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<page-object>, [">= 0"])
    end
  else
    s.add_dependency(%q<watir-webdriver>, [">= 0.6.10"])
    s.add_dependency(%q<net-http-persistent>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<page-object>, [">= 0"])
  end
end
