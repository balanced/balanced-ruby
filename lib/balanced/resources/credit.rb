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
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:credits]

    def reverse(options={})
      options[:href] = self.reversals.href

      reversal = Reversal.new(options)
      reversal.save
    end

  end
end
