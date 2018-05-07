# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudfront/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "whitelist_cloudfront_proxies_rails"
  spec.version       = Cloudfront::Rails::VERSION
  spec.authors       = ["Justus R"]
  spec.email         = ["justus.renton@avant.com"]

  spec.summary       = %q{ Whitelist Cloudfront Proxies }
  spec.description   = %q{ Whitelist Cloudfront Proxies for Rails so that request.ip and request.remote_ip work properly }
  spec.homepage      = "https://github.com/avantcredit/whitelist-cloudfront-proxies-rails/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-rails"

  spec.add_development_dependency "webmock"

  spec.add_dependency "rails", "~> 5.0"
  spec.add_dependency "httparty"

  spec.required_ruby_version = ">= 2.0"
end
