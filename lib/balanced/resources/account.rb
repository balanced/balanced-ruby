module Balanced

  class Account < Balanced::FundingInstrument

    DEPOSIT = 'deposit'
    LINE_OF_CREDIT = 'line-of-credit'
    OPERATING = 'operating'

    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:accounts]

    def transfer_to(options = {})
      Balanced::Utils.assert_required_keys(options, :required => [:destination, :amount])
      options[:href] = self.transfers.href
      options[:destination] = Balanced::Utils.extract_href_from_object(options[:destination])
      transfer = Balanced::Transfer.new(options)
      transfer.save
    end

  end

end
