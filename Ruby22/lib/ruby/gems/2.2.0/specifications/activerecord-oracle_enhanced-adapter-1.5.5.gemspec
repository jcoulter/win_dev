# -*- encoding: utf-8 -*-
# stub: activerecord-oracle_enhanced-adapter 1.5.5 ruby lib

Gem::Specification.new do |s|
  s.name = "activerecord-oracle_enhanced-adapter"
  s.version = "1.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Raimonds Simanovskis"]
  s.date = "2014-05-23"
  s.description = "Oracle \"enhanced\" ActiveRecord adapter contains useful additional methods for working with new and legacy Oracle databases.\nThis adapter is superset of original ActiveRecord Oracle adapter.\n"
  s.email = "raimonds.simanovskis@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/rsim/oracle-enhanced"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Oracle enhanced adapter for ActiveRecord"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<activemodel>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<actionpack>, [">= 0"])
      s.add_development_dependency(%q<railties>, [">= 0"])
      s.add_development_dependency(%q<arel>, [">= 0"])
      s.add_development_dependency(%q<journey>, [">= 0"])
      s.add_development_dependency(%q<activerecord-deprecated_finders>, [">= 0"])
      s.add_development_dependency(%q<ruby-plsql>, [">= 0.5.0"])
      s.add_development_dependency(%q<ruby-oci8>, [">= 0"])
    else
      s.add_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 0"])
      s.add_dependency(%q<arel>, [">= 0"])
      s.add_dependency(%q<journey>, [">= 0"])
      s.add_dependency(%q<activerecord-deprecated_finders>, [">= 0"])
      s.add_dependency(%q<ruby-plsql>, [">= 0.5.0"])
      s.add_dependency(%q<ruby-oci8>, [">= 0"])
    end
  else
    s.add_dependency(%q<jeweler>, ["~> 1.8"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 0"])
    s.add_dependency(%q<arel>, [">= 0"])
    s.add_dependency(%q<journey>, [">= 0"])
    s.add_dependency(%q<activerecord-deprecated_finders>, [">= 0"])
    s.add_dependency(%q<ruby-plsql>, [">= 0.5.0"])
    s.add_dependency(%q<ruby-oci8>, [">= 0"])
  end
end
