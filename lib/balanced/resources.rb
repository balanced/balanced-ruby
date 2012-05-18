module Balanced

  class ApiKey < Resource
  end

  class Account < Resource

    def debit (amount=nil,
        appears_on_statement_as=nil,
        hold_uri=nil,
        meta=nil,
        description=nil,
        source_uri=nil)

    end

    def hold amount, meta={}, source_uri=nil
    end

    def credit amount, description=nil, meta={}, destination_ur=nil
    end

    def add_card card_uri
    end

    def add_bank_account bank_account_uri
    end

    def promote_to_merchant merchant_data
    end

  end

  class Merchant < Resource

    def self.me
    end

  end

  class Marketplace < Resource

    def self.my_marketplace
    end

    def create_buyer email_address, card_uri, name=nil, meta={}
    end

    def create_merchant email_address, merchant, bank_account_uri=nil, name=nil, meta={}
    end

  end

  class Hold < Resource

    def void
      @is_void = true
      save
    end

    def capture *args
    end

  end

  class Debit < Resource

    def refund amount=nil, description=nil
    end

  end

  class Credit < Resource
  end

  class Transaction < Resource
  end

  class Card < Resource
  end

  class BankAccount < Resource
  end

end