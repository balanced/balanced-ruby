module Balanced
  # A Refund represents a reversal of funds from a Debit. A Debit can have
  # many Refunds associated with it up to the total amount of the original
  # Debit. Funds are returned to your Marketplace's Merchant Account
  # proportional to the amount of the Refund.
  #
  class Refund
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:refunds]

  end

end

