# enable RubyInstaller DevKit usage as a vendorable helper library
unless ENV['PATH'].include?('c:\\dev\\DevKit\\mingw\\bin') then
  phrase = 'Temporarily enhancing PATH to include DevKit...'
  if defined?(Gem)
    Gem.ui.say(phrase) if Gem.configuration.verbose
  else
    puts phrase
  end
  puts "Prepending ENV['PATH'] to include DevKit..." if $DEBUG
  ENV['PATH'] = 'c:\\dev\\DevKit\\bin;c:\\dev\\DevKit\\mingw\\bin;' + ENV['PATH']
end
ENV['RI_DEVKIT'] = 'c:\\dev\\DevKit'
ENV['CC'] = 'gcc'
ENV['CXX'] = 'g++'
ENV['CPP'] = 'cpp'
