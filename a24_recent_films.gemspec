# frozen_string_literal: true

require_relative "lib/a24_recent_films/version"

Gem::Specification.new do |spec|
  spec.name          = "upcoming_films"
  spec.version       = UpcomingFilms::VERSION
  spec.authors       = ["Melissa Guachun"]
  spec.email         = ["1212malka@gmail.com"]

  spec.summary       = "View recent films from A24 Studios."
  spec.description   = "Displays title, release date, and image url of recent A24 films."
  spec.homepage      = "https://github.com/mguachun/a24_cli_project.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mguachun/a24_cli_project.git"
  spec.metadata["changelog_uri"] = "https://github.com/mguachun/a24_cli_project.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.post_install_messge = "Thank you for installing Recent Films of A24 Studios!"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "open-uri"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
