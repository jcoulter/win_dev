require 'rubygems'

GEMSPEC = Gem::Specification.new do |s|
  s.name = "require_all"
  s.version = "1.2.1"
  s.authors = ["Jarmo Pertman", "Tony Arcieri"]
  s.email = "jarmo.p@gmail.com"
  s.date = "2010-09-14"
  s.summary = "A wonderfully simple way to load your code"
  s.platform = Gem::Platform::RUBY

  # Gem contents
  s.files = Dir.glob("{lib,spec}/**/*") + ['Rakefile', 'require_all.gemspec']

  # RubyForge info
  s.homepage = "http://github.com/jarmo/require_all"

  # RDoc settings
  s.has_rdoc = true
  s.rdoc_options = %w(--title require_all --main README.textile --line-numbers)
  s.extra_rdoc_files = ["LICENSE", "README.textile", "CHANGES"]
end
