# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vs_token_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "vs_token_generator"
  spec.version       = VsTokenGenerator::VERSION
  spec.authors       = ["VS-ZHANG"]
  spec.email         = ["shipei1209@gmail.com"]
  spec.summary       = %q{Generate a token based on time-stamp}
  spec.description   = %q{Generate a token based on time-stamp}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
