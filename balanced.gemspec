# -*- encoding: utf-8 -*-
require File.expand_path('../lib/balanced/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mahmoud Abdelkader"]
  gem.email         = %w(mahmoud@poundpay.com)
  gem.description   = %q{Balanced is the payments platform for marketplaces.
    Integrate a payments experience just like Amazon for your marketplace.
    Forget about dealing with banking systems, compliance, fraud, and security.
    }
  gem.summary       = %q{Sign up on https://balancedpayments.com/}
  gem.homepage      = "https://balancedpayments.com"

  gem.add_dependency("faraday", '~> 0.8')
  gem.add_dependency("faraday_middleware", '~> 0.8.7')

  gem.add_development_dependency("rspec", '~> 2.10')
  gem.add_development_dependency("vcr", '~> 2.2.0')
  gem.add_development_dependency("guard", '~> 1.1.1')
  gem.add_development_dependency("guard-rspec", '~> 1.0.0')
  gem.add_development_dependency("aws/s3")
  gem.add_development_dependency("yard")
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "balanced"
  gem.require_paths = %w(lib)
  gem.version       = Balanced::VERSION
end
