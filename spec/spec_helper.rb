require 'rubygems'
require 'bundler/setup'
require 'balanced'
require 'vcr'

begin
  require 'ruby-debug'
rescue LoadError
# ignored
end


VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :faraday
end

RSpec.configure do |c|
  c.extend VCR::RSpec::Macros
end


ACCOUNTS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts/
MERCHANT_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*/
HOLDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/holds/
BANK_ACCOUNTS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/bank_accounts/
REFUNDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/refunds/
DEBITS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/debits/
TRANSACTIONS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/transactions/
CREDITS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/credits/
CARDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/cards/
