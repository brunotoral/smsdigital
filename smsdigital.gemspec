require_relative 'lib/smsdigital/version'

Gem::Specification.new do |spec|
  spec.name          = "smsdigital"
  spec.version       = SMSDigital::VERSION
  spec.authors       = ["Bruno Toral"]
  spec.email         = ["brunotoral89@gmail.com"]

  spec.summary       = "A ruby gem to use Smsdigital service."
  spec.description   =  "A ruby gem to use Smsdigital service. In this first version only one message and one recipient are allowed"
  spec.homepage      = "https://github.com/brunotoral/smsdigital"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = "https://github.com/brunotoral/smsdigital"
  spec.metadata["source_code_uri"] = "https://github.com/brunotoral/smsdigital"
  spec.metadata["changelog_uri"] = "https://github.com/brunotoral/smsdigital"

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "httparty"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
