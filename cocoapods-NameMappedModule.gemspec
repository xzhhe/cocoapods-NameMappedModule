# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-NameMappedModule/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-NameMappedModule'
  spec.version       = CocoapodsNamemappedmodule::VERSION
  spec.authors       = ['xiongzenghui']
  spec.email         = ['zxcvb1234001@163.com']
  spec.description   = %q{A short description of cocoapods-NameMappedModule.}
  spec.summary       = %q{A longer description of cocoapods-NameMappedModule.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-NameMappedModule'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
