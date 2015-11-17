# -*- encoding: utf-8 -*-
# stub: kendo-page-object-widgets 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kendo-page-object-widgets"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server." } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Mosaic Team"]
  s.bindir = "exe"
  s.date = "2015-05-28"
  s.description = "This gem adds kendo widgets to your page-objects"
  s.email = ["mosaic.development@sherwin.com"]
  s.homepage = "http://github.sherwin.com/kxm827/kendo-page-object-widgets"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Kendo Widgets"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.8"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<cucumber>, ["= 1.3"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<page-object>, [">= 0"])
      s.add_runtime_dependency(%q<require_all>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.8"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<cucumber>, ["= 1.3"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<page-object>, [">= 0"])
      s.add_dependency(%q<require_all>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.8"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<cucumber>, ["= 1.3"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<page-object>, [">= 0"])
    s.add_dependency(%q<require_all>, [">= 0"])
  end
end
