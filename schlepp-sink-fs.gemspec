# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schlepp-sink-fs/version'

Gem::Specification.new do |spec|
  spec.name          = "schlepp-sink-fs"
  spec.version       = Schlepp::Sink::Fs::VERSION
  spec.authors       = ["Ed Carrel"]
  spec.email         = ["edward@carrel.org"]
  spec.summary       = %q{Painless data splitting and manipulation via the file system}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.platform      = Gem::Platform.local
  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'schlepp'

  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'mocha' 
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
