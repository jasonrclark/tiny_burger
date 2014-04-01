# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiny_burger/version'

Gem::Specification.new do |spec|
  spec.name          = "tiny_burger"
  spec.version       = TinyBurger::VERSION
  spec.authors       = ["Jason R. Clark"]
  spec.email         = ["jason@jasonrclark.com"]
  spec.summary       = %q{Code formatting for slides}
  spec.description   = %q{Basic command-line application for breaking a file of code into separate formatted slides}
  spec.homepage      = "http://github.com/jasonrclark/tiny_burger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~>10.2"
end
