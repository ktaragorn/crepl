# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crystal/repl/version'

Gem::Specification.new do |spec|
  spec.name          = "crystal-repl"
  spec.version       = Crystal::Repl::VERSION
  spec.authors       = ["Karthik T"]
  spec.email         = ["karthikt.holmes+github@gmail.com"]
  spec.summary       = %q{A very simple REPL for crystal (crystal-lang.org)}
  spec.description   = %q{Crystal's design does not allow for a full traditional REPL. This one treats each line as indepentant crystal programs}
  spec.homepage      = "https://github.com/ktaragorn/crystal-repl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
