# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freezy/version'

Gem::Specification.new do |gem|
  gem.name          = "freezy"
  gem.version       = Freezy::VERSION
  gem.authors       = ["Marcus Vinicius Loureiro Mansur"]
  gem.email         = ["marcus.v.mansur@gmail.com"]
  gem.description   = %q{freezes gemfile versions}
  gem.summary       = %q{freezy}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.bindir        = 'bin'
  gem.executables   = ['freezy']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "bundler"
end
