# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-librarian/version'

Gem::Specification.new do |gem|
  gem.name          = "vagrant-librarian"
  gem.version       = Vagrant::Librarian::VERSION
  gem.authors       = ["Felix Schäfer"]
  gem.email         = ["felix@launchco.com"]
  gem.description   = %q{vagrant-librarian is a vagrant plugin that takes care of installing and updating librarian-managed cookbooks as part of your normal vagrant workflow.}
  gem.summary       = %q{vagrant-librarian integrates librarian to vagrant}
  gem.homepage      = "https://github.com/thegcat/vagrant-librarian"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "vagrant"
  gem.add_dependency "librarian"
end
