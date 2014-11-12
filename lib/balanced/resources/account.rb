module Balanced
  #  An Account is a way to pool funds from across multiple Orders
  #
  class Account < Balanced::DebitableFundingInstrument
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:accounts]

  end
end
