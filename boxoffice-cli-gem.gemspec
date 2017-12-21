
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "boxoffice/version"

Gem::Specification.new do |spec|
  spec.name          = "boxoffice-cli-gem"
  spec.version       = BoxOffice::VERSION
  spec.authors       = ["'Ruby Weiner'"]
  spec.email         = ["'rubyweiner796@me.com'"]

  spec.summary       = "List of top 3 box office movies"
  spec.description   = "List of today's top 3 box office movies includes Rotton Tomato score, audience score, and a short description of the movie."
  spec.homepage      = "https://github.com/rubyweiner/box-office-cli-gem"
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = 'bestmovies'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_development_dependency "nokogiri" "~> 0"
end
