source 'https://rubygems.org'

# Specify your gem's dependencies in balanced.gemspec

gem "faraday"
gem "faraday_middleware"
gem "addressable"
gem "json"

group :development do
  gem "yard"
  gem "guard", '~> 1.6.2'
  gem "listen", "~> 1.3.1" # 2.x requires celluloid, not 1.8.7 friendly
  gem "guard-rspec", '~> 2.4.1'
end

group :test do
  gem 'net-http-persistent'
  gem "rspec", '~> 2.14.1'
  gem "rake", '~> 10.0.3'
  gem "vcr", '~> 2.4.0'
  gem "webmock"
end