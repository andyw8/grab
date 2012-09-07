# -*- encoding: utf-8 -*-
require File.expand_path('../lib/grab/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Waite"]
  gem.email         = ["github.aw@andywaite.com"]
  gem.description   = "Fetch multiple keys from a Hash"
  gem.summary       = "Fetch multiple keys from a Hash"
  gem.homepage      = "https://github.com/andyw8/grab"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "grab"
  gem.require_paths = ["lib"]
  gem.version       = Grab::VERSION
end
