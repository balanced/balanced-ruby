module Balanced
  # A Settlement is the action of moving money out of an Account to a bank
  # account.
  #
  class Settlement
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:settlements]

  end
end
