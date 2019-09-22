# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-NameMappedModule/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-NameMappedModule'
  spec.version       = CocoapodsNamemappedmodule::VERSION
  spec.authors       = ['xiongzenghui']
  spec.email         = ['zxcvb1234001@163.com']
  spec.description   = %q{create pod name mapping to framework.}
  spec.summary       = %q{create pod name mapping to framework.}
  spec.homepage      = 'https://github.com/xzhhe/cocoapods-name_mapped_module'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0.1'
  spec.add_development_dependency 'rake'
end
