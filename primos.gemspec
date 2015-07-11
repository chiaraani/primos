# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primos/version'

Gem::Specification.new do |spec|
  spec.name          = "primos"
  spec.version       = Primos::VERSION
  spec.authors       = ["Chiara Piccinini Núñez"]
  spec.email         = ["chiaraani@gmail.com"]

  spec.summary       = %q{Una función para imprmir numeros primos.}
  spec.description   = %q{Escribes un número natural, el límite y te calcula todos los primos hasta ese límite.}
  spec.homepage      = "http://www.chiaraani.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "cucumber", "~> 2.0"
  spec.add_development_dependency "shoulda-matchers", "~> 2.8"
  spec.add_development_dependency "rspec-expectations", "~> 3.3"
  spec.add_development_dependency "aruba", "~> 0.7"
  spec.add_development_dependency "yard", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
