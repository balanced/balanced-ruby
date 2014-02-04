module Balanced
  # A BankAccount is both a source, and a destination of, funds. You may
  # create Debits and Credits to and from, this funding source.
  #
  # *NOTE:* The BankAccount resource does not support creating a Hold.
  #
  class BankAccount < Balanced::FundingInstrument
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:bank_accounts]

    def verify
      options = {:href => self.bank_account_verifications.href}
      vf = BankAccountVerification.new(options)
      vf.save
    end

    def associate_to_customer(customer)
      self.links['customer'] = Balanced::Utils.extract_href_from_object(customer)
      save
    end
  end

  class BankAccountVerification
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:bank_account_verification,
                             :bank_account_verifications,
                             :verification,
                             :verifications
                            ]

    def confirm(amount_1, amount_2)
      self.amount_1 = amount_1
      self.amount_2 = amount_2
      save
    end
  end

end
