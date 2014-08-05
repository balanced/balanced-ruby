module Balanced
  # A card represents a source of funds for an Account. You may Hold or Debit
  # funds from the account associated with the Card.
  #
  class Card < Balanced::DebitableFundingInstrument
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:cards]

    # Creates a Debit of funds from this Card.
    #
    # @param [Hash] options
    # @return [Debit]
    def debit(options={})
      options[:href] = self.debits.href
      debit = Balanced::Debit.new(options)
      debit.save
    end

    # Creates a Credit of funds to this Card.
    #
    # @param [Hash] options
    # @return [Credit]
    def credit(options={})
      if ! self.respond_to?(:credits)
        raise Balanced::FundingInstrumentNotCreditable
      end

      options[:href] = self.credits.href
      credit = Balanced::Credit.new(options)
      credit.save
    end

    # Creates a Hold of funds from this Card to your Marketplace.
    #
    # @return [Hold]
    def hold(options={})
      options[:href] = self.card_holds.href
      hold = Balanced::CardHold.new(options)
      hold.save
    end

    def associate_to_customer(customer)
      self.links['customer'] = Balanced::Utils.extract_href_from_object(customer)
      save
    end
  end

end
