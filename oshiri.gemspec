# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oshiri/version'

Gem::Specification.new do |spec|
  spec.name          = "oshiri"
  spec.version       = Oshiri::VERSION
  spec.authors       = ["ppworks"]
  spec.email         = ["koshikawa@ppworks.jp"]

  spec.summary       = %q{Truncate last word}
  spec.description   = %q{Truncate last word}
  spec.homepage      = "https://github.com/ppworks/oshiri"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
