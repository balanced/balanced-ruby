require 'rubygems'
require 'bundler/setup'
require 'balanced'
require 'vcr'
require 'json'
require 'securerandom'
require 'webmock'

begin
  require 'ruby-debug'
rescue LoadError
# ignored
end


VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  #c.hook_into :faraday
  c.hook_into :webmock # TEMP WORK AROUND FOR https://github.com/vcr/vcr/issues/386
  c.configure_rspec_metadata!
  c.default_cassette_options = {:record => :new_episodes}
  c.allow_http_connections_when_no_cassette = true
end

# TODO: better way to do this?
host = ENV['BALANCED_HOST'] or nil
options = {}
if !host.nil? then
  options[:scheme] = 'http'
  options[:host] = host
  options[:port] = 5000
  options[:ssl_verify] = false
  Balanced.configure(nil, options)
end

RSpec.configure do |c|
  c.filter_run_excluding :skip => true
  c.treat_symbols_as_metadata_keys_with_true_values = true

  def make_marketplace
    @api_key = Balanced::ApiKey.new.save
    Balanced.configure @api_key.secret
    @marketplace = Balanced::Marketplace.new.save
    @rich_card = Balanced::Card.new(
        :number => '5105105105105100',
        :expiration_month => '12',
        :expiration_year => '2020',
        :cvv => '123'
    ).save
    @amount_in_escrow = 15000 * 100
    @rich_card.debit(:amount => @amount_in_escrow)
  end

  # @example Use this metadata to create a marketplace in a before block
  #   describe "something under test", vcr: true, marketplace: true do
  #     it "works" do
  #       # ...
  #     end
  #   end
  c.before(:all, :marketplace => true) do
    VCR.use_cassette(:make_marketplace) do
      make_marketplace
    end
  end
end
