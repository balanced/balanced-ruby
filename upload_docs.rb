#!/usr/bin/env ruby

require 'aws/s3'
require 'yard'

# cheap
args = [
  'doc',
  '-e',
  'doc/balanced_plugin.rb',
  '-p',
  'doc/balanced_templates/',
  '--one-file',
  '--query',
  "object.to_s != 'Balanced::Account::MoreInformationRequiredError'",
  'lib/balanced/resources/account.rb',
  'lib/balanced/resources/api_key.rb',
  'lib/balanced/resources/bank_account.rb',
  'lib/balanced/resources/card.rb',
  'lib/balanced/resources/credit.rb',
  'lib/balanced/resources/debit.rb',
  'lib/balanced/resources/hold.rb',
  'lib/balanced/resources/marketplace.rb',
  'lib/balanced/resources/merchant.rb',
  'lib/balanced/resources/transaction.rb'
]

YARD::CLI::CommandParser.run(*args)

AWS::S3::Base.establish_connection!(
  :access_key_id     => ENV['AWS_ACCESS_KEY_ID'], 
  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
)

puts AWS::S3::S3Object.store('docs/ruby_api_reference.html', 
  open('doc/index.html'), 
  'justice.web',
  :access => :public_read
)
