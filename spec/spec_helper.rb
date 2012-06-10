require 'rubygems'
require 'bundler/setup'

require 'balanced'

RSpec.configure do |config|
end

MERCHANT_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*/
HOLDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/holds/
BANK_ACCOUNTS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/bank_accounts/
REFUNDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/refunds/
DEBITS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/debits/
TRANSACTIONS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/transactions/
CREDITS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/credits/
CARDS_URI_REGEX = /\/v1\/marketplaces\/TEST-\w*\/accounts\/\w*\/cards/
