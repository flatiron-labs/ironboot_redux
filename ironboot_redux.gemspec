# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ironboot_redux/version'

Gem::Specification.new do |spec|
  spec.name          = "ironboot_redux"
  spec.version       = IronbootRedux::VERSION
  spec.authors       = ["Logan Hasson", "Adam Jonas", "Spencer Rogers"]
  spec.email         = ["logan.hasson@gmail.com"]
  spec.summary       = "Spins up a production-like development environment."
  spec.homepage      = "http://github.com/flatiron-labs/ironboot-redux"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "bin"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "highline"
end
