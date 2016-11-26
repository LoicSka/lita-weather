# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lita/weather/version'

Gem::Specification.new do |spec|
  spec.name          = "lita-weather"
  spec.version       = Lita::Weather::VERSION
  spec.authors       = ["Loic Shyaka"]
  spec.email         = ["loicshyaka09@gmail.com"]

  spec.summary       = %q{Give your lita bot the ability to fetch weather forecasts.}
  spec.description   = %q{This gem uses the www.wunderground.com API to get the forecasts you need to sign up for a free api key before you can use the gem.}
  spec.homepage      = "https://github.com/LoicSka/lita-weather"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
