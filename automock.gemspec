# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'automock/version'

Gem::Specification.new do |spec|
  spec.name          = 'automock'
  spec.version       = Automock::VERSION
  spec.authors       = ['joe-re']
  spec.email         = ['joe.tialtngo@gmail.com']

  spec.summary       = 'Auto-generate mock_data of JSON API response from your request-specs.'
  spec.homepage      = 'https://github.com/joe-re/automock'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rspec', '~> 3.0'
#  spec.add_dependency 'rails', '~> 4.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'
end
