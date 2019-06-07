
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "otter/version"

Gem::Specification.new do |spec|
  spec.name          = "otter"
  spec.version       = Otter::VERSION
  spec.authors       = ["komisan19"]
	spec.email         = ["hogehoge@example.com"]

	spec.summary       = "make Dockerfile and docker-compose.yml by ruby CLI"
  spec.description   = "This RubyGem is simple make Dockerfile"
	spec.homepage      = "https://komisan19.github.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
	spec.add_dependency "aruba"
	# test
	spec.add_development_dependency "minitest"
	# CLI
	spec.add_dependency "thor"
	# file#COPY
	spec.add_dependency "fileutils"

end
