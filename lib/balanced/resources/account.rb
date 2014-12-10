module Balanced
  #  An Account is a way to pool funds from across multiple Orders
  #
  class Account < Balanced::FundingInstrument
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:accounts]

    # Creates a Credit of funds from to this Account.
    #
    # @return [Credit]
    def credit(options = {})
      options[:href] = self.credits.href
      credit = Balanced::Credit.new(options)
      credit.save
    end

    # Creates a Settlement from to this Account.
    #
    # @return [Credit]
    def settle(options = {})
      Balanced::Utils.assert_required_keys(
          options,
          :required => [:funding_instrument]
      )
      options[:href] = self.settlements.href
      settlement = Balanced::Settlement.new(options)
      settlement.save
    end

  end
end
