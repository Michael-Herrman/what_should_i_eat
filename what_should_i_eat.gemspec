lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Michael Herrman"]
  spec.email         = ["michaelherrmanmusic@gmail.com"]

  spec.summary       = "A quick and easy way to find a recipe for tonight's dinner"
  spec.description   = "This gem, when asked 'what_should_i_eat' will search a recipe database and provide to you a wonderfully fresh a delicious recipe option with attached url."
  spec.homepage      = "https://github.com/Michael-Herrman"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Michael-Herrman"
  spec.metadata["changelog_uri"] = "https://github.com/Michael-Herrman"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/})}
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
