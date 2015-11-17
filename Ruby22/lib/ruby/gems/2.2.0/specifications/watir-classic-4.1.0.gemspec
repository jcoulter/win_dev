# -*- encoding: utf-8 -*-
# stub: watir-classic 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "watir-classic"
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bret Pettichord"]
  s.date = "2015-06-10"
  s.description = "    WATIR is \"Web Application Testing in Ruby\". Watir (pronounced water) is a free,\n    open-source functional testing tool for automating browser-based tests of web applications.\n    It works with applications written in any language.\n    Watir drives the Internet Explorer browser the same way an end user would.\n    It clicks links, fills in forms, presses buttons.\n    Watir also checks results, such as whether expected text appears on the\n    page, or whether a control is enabled.\n    Watir can test web applications written in any language.\n    Watir is a Ruby library that works with Internet Explorer on Windows.\n"
  s.email = "watir-general@groups.google.com"
  s.homepage = "http://watir.com/"
  s.requirements = ["Microsoft Windows running Internet Explorer 5.5 or later."]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Automated testing tool for web applications."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-process>, [">= 0.5.5"])
      s.add_runtime_dependency(%q<windows-pr>, [">= 0.6.6"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.7.rc3"])
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0"])
      s.add_runtime_dependency(%q<rautomation>, ["~> 0.7"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<win32screenshot>, ["~> 1.0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<syntax>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<childprocess>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<win32-process>, [">= 0.5.5"])
      s.add_dependency(%q<windows-pr>, [">= 0.6.6"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.7.rc3"])
      s.add_dependency(%q<ffi>, ["~> 1.0"])
      s.add_dependency(%q<rautomation>, ["~> 0.7"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<win32screenshot>, ["~> 1.0.9"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<syntax>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<childprocess>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<win32-process>, [">= 0.5.5"])
    s.add_dependency(%q<windows-pr>, [">= 0.6.6"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.7.rc3"])
    s.add_dependency(%q<ffi>, ["~> 1.0"])
    s.add_dependency(%q<rautomation>, ["~> 0.7"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<win32screenshot>, ["~> 1.0.9"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<syntax>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<childprocess>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
