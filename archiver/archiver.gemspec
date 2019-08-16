lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "archiver/version"

Gem::Specification.new do |spec|
  spec.name          = "archiver"
  spec.version       = Archiver::VERSION
  spec.authors       = ["ltrii"]
  spec.email         = ["lelandtr@gmail.com"]

  spec.summary       = "yo"
  spec.description   = "whoa"
  spec.homepage      = "http://www.no.com"

  spec.metadata["allowed_push_host"] = "http://www.example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://example.com"
  spec.metadata["changelog_uri"] = "http://example.com"

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

  spec.add_dependency "activerecord", ">= 4.0"
end
