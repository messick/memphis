# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memphis/version'

Gem::Specification.new do |spec|
  spec.name          = "memphis"
  spec.version       = Memphis::VERSION
  spec.authors       = ["Nick Messick"]
  spec.email         = ["nmessick@gmail.com"]
  spec.description   = %q{Use Echonest's Rosetta Stone project to lookup ids for various other services}
  spec.summary       = %q{Use Echonest's Rosetta Stone project to lookup ids for various other services}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "multi_json"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
