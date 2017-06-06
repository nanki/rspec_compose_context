# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_compose_context/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_compose_context"
  spec.version       = RspecComposeContext::VERSION
  spec.authors       = ["NANKI Haruo"]
  spec.email         = ["nanki@dotswitch.net"]

  spec.summary       = %q{composable context.}
  spec.description   = %q{composable context.}
  spec.homepage      = "https://github.com/nanki/rspec_compose_context"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
