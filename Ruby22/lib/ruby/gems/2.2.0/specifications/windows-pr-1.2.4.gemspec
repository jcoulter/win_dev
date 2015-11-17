# -*- encoding: utf-8 -*-
# stub: windows-pr 1.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "windows-pr"
  s.version = "1.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel J. Berger", "Park Heesob"]
  s.date = "2014-10-18"
  s.description = "    The windows-pr library is a collection of Windows functions and constants\n    pre-defined for you using the windows-api library. It also autogenerates\n    explicit ANSI and Wide character versions of those functions, as well as\n    constants that can be used as methods, e.g. CloseHandle() instead of\n    CloseHandle.call().\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["MANIFEST", "README", "CHANGES", "doc/conversion_guide.txt"]
  s.files = ["CHANGES", "MANIFEST", "README", "doc/conversion_guide.txt"]
  s.homepage = "https://github.com/djberg96/windows-pr"
  s.licenses = ["Artistic 2.0"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Windows functions and constants bundled via Win32::API"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<windows-api>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<win32-api>, [">= 1.4.5"])
    else
      s.add_dependency(%q<windows-api>, [">= 0.4.0"])
      s.add_dependency(%q<win32-api>, [">= 1.4.5"])
    end
  else
    s.add_dependency(%q<windows-api>, [">= 0.4.0"])
    s.add_dependency(%q<win32-api>, [">= 1.4.5"])
  end
end
