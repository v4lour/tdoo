# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','tdoo','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'tdoo'
  s.version = Tdoo::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/tdoo
lib/tdoo/version.rb
lib/tdoo.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','tdoo.rdoc']
  s.rdoc_options << '--title' << 'tdoo' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'tdoo'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.8.1')
end
