# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tung Nguyen"]
  gem.email         = ["tongueroo@gmail.com"]
  gem.description   = %q{Guard::Rna automatically builds node.json files.}
  gem.summary       = %q{Guard::Rna automatically builds node.json files.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guard-rna"
  gem.require_paths = ["lib"]
  gem.version       = Guard::RNA_VERSION

  gem.add_dependency "colorize"
  gem.add_dependency "guard"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "travis-lint"
  gem.add_development_dependency "growl"
  gem.add_development_dependency "guard-bundler"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "rb-fsevent"

end
