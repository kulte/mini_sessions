# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_sessions/version'

Gem::Specification.new do |spec|
  spec.name          = "mini_sessions"
  spec.version       = MiniSessions::VERSION
  spec.authors       = ["Zachary Friedman"]
  spec.email         = ["zafriedman@gmail.com"]
  spec.description   = %q{Minimal session-based authentication}
  spec.summary       = %q{Minimal session-based authentication}
  spec.homepage      = "https://github.com/kulte/mini_sessions"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
