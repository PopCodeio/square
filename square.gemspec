lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'square/version'

Gem::Specification.new do |spec|
  spec.name          = 'square'
  spec.version       = Square::Version
  spec.authors       = ['Ryu Yokoji']
  spec.email         = ['yokoji@freee.co.jp']
  spec.description   = %q{A Ruby interface to the Square API.}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/C-FO/square'
  spec.license       = 'MIT'
  spec.files         = %w{LICENSE.txt README.md Rakefile square.gemspec}
  spec.files         += Dir.glob('lib/**/*.rb')
  spec.files         += Dir.glob('test/**/*')
  spec.test_files    = Dir.glob('test/**/*')
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.2'
  spec.required_rubygems_version = '>= 1.3.5'

  spec.add_dependency 'faraday', ['~> 0.8', '< 0.9']
  spec.add_dependency 'faraday_middleware', '~> 0.9.0'
  spec.add_dependency 'simple_oauth', '~> 0.2'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
