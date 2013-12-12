# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','tdoo','version.rb'])

spec = Gem::Specification.new do |s| 
  s.name = 'tdoo'
  s.version = Tdoo::VERSION
  s.author = 'v4lour'
  s.email = 'v4lour@gmail.com'
  s.homepage = 'https://github.com/v4lour/tdoo.git'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A mini todo command-line application'
  s.description = 'You can create, list and check tasks via this simple gem.'
  s.license = 'MIT'
  s.files = %w(
bin/tdoo
lib/tdoo/version.rb
lib/tdoo/format/pretty.rb
lib/tdoo.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.bindir = 'bin'
  s.executables << 'tdoo'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.8.1')
  s.add_runtime_dependency('rainbow')
  s.add_runtime_dependency('terminal-table') 
end
