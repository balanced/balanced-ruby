module Balanced
  class Merchant
    include Balanced::Resource

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def self.me
      # TODO: use query
      response = Balanced.get collection_path
      return nil if response.body.to_s.length.zero? or response.body['total'] == 0
      payload = response.body
      construct_from_response payload['items'][0]
    end

    # Returns the Merchant associated with your Marketplace.
    #
    # @return [Merchant]
    def me
      self.class.me
    end

  end
end

