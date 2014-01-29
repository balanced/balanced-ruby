module Balanced
  # A Reversal represents a reversal of funds from a Credit. A Credit can have
  # many Reversals associated with it up to the total amount of the original
  # Reversal. Funds are returned to your Marketplace's Merchant Account
  # proportional to the amount of the Reversal.
  #
  class Reversal
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:reversals]
  end

end
