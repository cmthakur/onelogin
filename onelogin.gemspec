# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onelogin/version'

Gem::Specification.new do |gem|
  gem.name          = "onelogin"
  gem.version       = Onelogin::VERSION
  gem.authors       = ["cmthakur", "bivek"]
  gem.email         = ["cmthakur.r2s@gmail.com", "bardan.rana@gmail.com"]

  gem.summary       = %q{OneLogin Api wrapper}
  gem.description   = %q{
    This Gem use OneLogin’s product API to interact with your organization’s data and to develop third-party apps that incorporate and build upon OneLogin’s core product features.
    For more info visit https://developers.onelogin.com/docs
  }
  gem.homepage      = "https://github.com/cmthakur/onelogin"
  gem.license       = "MIT"
  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.11"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
end
