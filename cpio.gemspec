lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cpio/version"

Gem::Specification.new do |spec|
  spec.name          = "cpio"
  spec.version       = Cpio::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = %q{Extract CPIO archives with pure Ruby}
  spec.description   = %q{Extract CPIO archives with pure Ruby}
  spec.homepage      = "https://github.com/fontist/cpio"
  spec.license       = "BSD-2-Clause"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fontist/cpio"
  spec.metadata["changelog_uri"] = "https://github.com/fontist/cpio"

  spec.require_paths = ["lib"]
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(bin|test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["rcpio"]
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")

  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "0.75.0"
  spec.add_development_dependency "rubocop-performance"
end
