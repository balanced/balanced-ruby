module Balanced
  # A dispute occurs when a customer disputes a transaction that
  # occurred on their funding instrument.
  class Dispute
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:disputes]

  end
end

