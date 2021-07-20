Gem::Specification.new do |s|
  s.name        = "flicks"
  s.version     = "1.0.0"
  s.author      = "Shaheer"
  s.email       ="shaheerhussain1990@gmail.com"
  s.summary     = "Plays and reviews movies"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.homepage    = "https://www.google.ca"

  s.files       = Dir["{bin,lib,spec}/**/*"]
  s.test_files  = Dir["spec/**/*"]
  s.executables = [ 'flicks' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
