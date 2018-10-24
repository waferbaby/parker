# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('./lib')

require 'parker/version'

Gem::Specification.new do |s|
  s.name        = 'parker'
  s.version     = Parker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Daniel Bogan']
  s.email       = ['d+parker@waferbaby.com']
  s.homepage    = 'http://github.com/waferbaby/parker'
  s.summary     = 'A tool for organising game screenshots'
  s.description = 'A ridiculous tool for organising game screenshots.'
  s.license     = 'MIT'

  s.executables << 'parker'

  s.files        = Dir.glob('lib/**/*')
  s.require_path = 'lib'

  s.add_dependency 'optimist', '~> 3.0'
end
