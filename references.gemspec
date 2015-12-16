# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'references/version'

Gem::Specification.new do |spec|
  spec.name          = "referencess"
  spec.version       = References::VERSION
  spec.authors       = ["Jose Luis Gonzalez Hernandez","Eleazar Díaz Delgado"]
  spec.email         = ["alu0100611281@ull.edu.es","alu0100844474@ull.edu.es"]

  spec.summary       = %q{Manipulacion de referencias}
  spec.description   = %q{Manipulacion de referencias de bibliografia}
  spec.homepage      = "http://www.ull.es"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
end
