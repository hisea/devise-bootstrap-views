# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'devise-bootstrap-views'
  spec.version       = DeviseBootstrapViews::VERSION
  spec.authors       = ['Yinghai Zhao']
  spec.email         = ['zyinghai@gmail.com']
  spec.summary       = 'Bootstrap views for Devise.'
  spec.description   = 'Bootstrap views for Devise with I18n support.'
  spec.homepage      = 'https://github.com/hisea/devise-bootstrap-views'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 11.0'
end
