module Balanced
  # A Credit represents a transfer of funds from your Marketplace's
  # escrow account to a Merchant's Account within your Marketplace.
  #
  # By default, a Credit is sent to the most recently added funding
  # destination associated with an Account. You may specify a specific
  # funding source.
  #
  class Credit
    include Balanced::Resource
    def initialize *args 
      attributes = args.last.is_a?(Hash) ? args.pop : {}
      amount = args[0] || attributes.fetch(:amount) { }
      description = args[1] || attributes.fetch(:description) { nil }
      meta = args[2] || attributes.fetch(:meta) { nil }
      destination_uri = args[3] || attributes.fetch(:destination_uri) { nil }

      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = self.class.uri
      end
      super attributes
    end
  end
end

