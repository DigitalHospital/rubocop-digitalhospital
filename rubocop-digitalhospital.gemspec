# frozen_string_literal: true

require_relative "lib/rubocop/digitalhospital/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-digitalhospital"
  spec.version       = Rubocop::Digitalhospital::VERSION
  spec.authors       = ["DigitalHospital"]
  spec.email         = ["javi@digitalhospital.com"]

  spec.summary       = "The DigitalHospital rubocop style guide"
  spec.description   = "A rubocop style guide"
  spec.homepage      = "https://www.digitalhospital.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DigitalHospital/dh-styles"
  spec.metadata["changelog_uri"] = "https://github.com/DigitalHospital/dh-styles/issues"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-performance"
  spec.add_dependency "rubocop-rails"
  spec.add_dependency "rubocop-rspec"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
