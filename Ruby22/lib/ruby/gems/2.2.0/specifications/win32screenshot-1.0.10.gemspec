# -*- encoding: utf-8 -*-
# stub: win32screenshot 1.0.10 ruby lib

Gem::Specification.new do |s|
  s.name = "win32screenshot"
  s.version = "1.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jarmo Pertman", "Aslak Helles\u{f8}y"]
  s.date = "2013-11-01"
  s.description = "Capture Screenshots on Windows with Ruby to bmp, gif, jpg or png formats."
  s.email = ["jarmo.p@gmail.com", "aslak.hellesoy@gmail.com"]
  s.homepage = "http://github.com/jarmo/win32screenshot"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Capture Screenshots on Windows with Ruby to bmp, gif, jpg or png formats."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0"])
      s.add_runtime_dependency(%q<mini_magick>, ["~> 3.5.0"])
      s.add_runtime_dependency(%q<rautomation>, ["~> 0.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.0"])
      s.add_dependency(%q<mini_magick>, ["~> 3.5.0"])
      s.add_dependency(%q<rautomation>, ["~> 0.7"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.0"])
    s.add_dependency(%q<mini_magick>, ["~> 3.5.0"])
    s.add_dependency(%q<rautomation>, ["~> 0.7"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
