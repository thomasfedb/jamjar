# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jamjar/version'

Gem::Specification.new do |spec|
  spec.name          = "jamjar"
  spec.version       = JamJar::VERSION
  spec.authors       = ["Thomas Drake-Brockman"]
  spec.email         = ["thom@sfedb.com"]
  spec.summary       = "JamJar generates ActiveRecord models for use in tests."
  spec.description   = "JamJar dynamically creates SQLite-backed, in memory, ActiveRecord models to help you test your ActiveRecord extensions."
  spec.homepage      = "https://github.com/thomasfedb/jamjar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord", ">= 3.2"
end
