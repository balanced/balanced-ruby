module Balanced

  # A funding instrument represents a source and/or a destination of funds.
  # You may credit or debit a funding instrument to move funds to and from your
  # marketplace's escrow account respectively.
  #
  class FundingInstrument

    # Creates a Debit of funds from this FundingInstrument to your
    # Marketplace's escrow account.
    #
    # @return [Debit]
    def debit(options = {})
      Balanced::Utils.assert_required_keys(options, :required => [:amount])
      options[:href] = self.debits.href
      debit = Balanced::Debit.new(options)
      debit.save
      debit
    end

    # Creates a Credit of funds from your Marketplace's escrow account to this
    # FundingInstrument.
    #
    # @return [Credit]
    def credit(options = {})
      Balanced::Utils.assert_required_keys(options, :required => [:amount])
      options[:href] = self.credits.href
      credit = Balanced::Credit.new(options)
      credit.save
      credit
    end

  end

end
