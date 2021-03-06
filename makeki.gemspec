
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "makeki/version"

Gem::Specification.new do |spec|
  spec.name          = "makeki"
  spec.version       = Makeki::VERSION
  spec.authors       = ["Cronwel Irias"]
  spec.email         = ["noelirias@gmail.com"]

  spec.summary       = %q{Framework kind of like Rails but totally not that fancy}
  spec.description   = %q{Framework built from scratch}
  spec.homepage      = "http://rubygems.org/gems/makeki"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://rubygems.org'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "rack", "~> 2.0", ">= 2.0.5"
  spec.add_development_dependency "rack-test", '~> 0'
  spec.add_development_dependency "test-unit", '~> 0'
end
