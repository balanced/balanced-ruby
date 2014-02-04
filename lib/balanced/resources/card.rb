module Balanced
  # A card represents a source of funds for an Account. You may Hold or Debit
  # funds from the account associated with the Card.
  #
  class Card < Balanced::FundingInstrument

    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:cards]

    # Creates a Hold of funds from this Card.
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
