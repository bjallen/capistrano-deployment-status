# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/deployment_status/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-deployment-status"
  spec.version       = Capistrano::DeploymentStatus::VERSION
  spec.authors       = ["B.J. Allen"]
  spec.email         = ["bjallen@fourthvalve.com"]
  spec.summary       = %q{Creates a deployment status page.}
  spec.description   = %q{Creates a deployment status page. This page shows what was deployed and who deployed it.}
  spec.homepage      = "https://github.com/bjallen/capistrano-deployment-status"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.1'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
