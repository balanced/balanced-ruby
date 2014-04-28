#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-
require "base64"
require File.expand_path('../lib/balanced/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Balanced"]
  gem.email         = ["ZGV2QGJhbGFuY2VkcGF5bWVudHMuY29t"].map { |i| Base64.decode64(i) }
  gem.description   = %q{Balanced is the payments platform for marketplaces.    }
  gem.summary       = %q{https://docs.balancedpayments.com/}
  gem.homepage      = "https://www.balancedpayments.com"

  gem.add_dependency("faraday", ['>= 0.8.6', '<= 0.9.0'])
  gem.add_dependency("faraday_middleware", '~> 0.9.0')
  gem.add_dependency("addressable", '~> 2.3.5')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "balanced"
  gem.require_paths = %w(lib)
  gem.version       = Balanced::VERSION
end
