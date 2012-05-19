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
      debit = Debit.new(
          :uri => self.debits_uri,
          :amount => amount,
          :appears_on_statement_as => appears_on_statement_as,
          :hold_uri => hold_uri,
          :meta => meta,
          :description => description,
          :source_uri => source_uri,
      )
      debit.save
    end

    def hold amount, meta={}, source_uri=nil
      hold = Hold.new(
          :uri => self.holds_uri,
          :amount => amount,
          :meta => meta,
          :source_uri => source_uri,
      )
      hold.save
    end

    def credit amount, description=nil, meta={}, destination_uri=nil
      credit = Credit.new(
          :uri => self.debits_uri,
          :amount => amount,
          :meta => meta,
          :description => description,
          :destination_uri => destination_uri,
      )
      credit.save
    end

    def add_card card_uri
      self.card_uri = card_uri
      save
    end

    def add_bank_account bank_account_uri
      self.bank_account_uri = bank_account_uri
      save
    end

    def promote_to_merchant merchant_data
      self.merchant = merchant
      save
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
      account = Account.new(
        :uri => self.accounts_uri,
        :email_address => email_address,
        :card_uri => card_uri,
        :name => name,
        :meta => meta,
      )
      account.save
    end

    def create_merchant email_address, merchant, bank_account_uri=nil, name=nil, meta={}
      account = Account.new(
        :uri => self.accounts_uri,
        :email_address => email_address,
        :merchant => merchant,
        :bank_account_uri => bank_account_uri,
        :name => name,
        :meta => meta,
      )
      account.save
    end

  end

  class Hold < Resource

    def void
      @is_void = true
      save
    end

    def capture amount, appears_on_statement_as, meta, description
      self.account.debit(amount, appears_on_statement_as, self.uri, meta, description)
    end

  end

  class Debit < Resource

    def refund amount=nil, description=nil
      refund = Refund.new(
          :uri => self.refunds_uri,
          :debit_uri => self.uri,
          :amount => amount,
          :description => description,
      )
      refund.save
    end

  end

  class Credit < Resource
  end

  class Refund < Resource
  end

  class Transaction < Resource
  end

  class Card < Resource

    def debit amount=nil, appears_on_statement_as=nil, holds_uri=nil, meta=nil, description=nil
      self.account.debit(amount, appears_on_statement_as, holds_uri, meta, description, self.uri)
    end

    def hold amount=nil, meta=nil
      self.account.hold(amount, meta, self.uri)
    end
  end

  class BankAccount < Resource

    def debit amount, appears_on_statement_as=nil, meta=mil, description=nil
      self.account.debit(amount, appears_on_statement_as, meta, description, self.uri)
    end

    def credit amount, description=nil, meta=nil
      self.account.credit(amount, description, meta, self.uri)
    end
  end

end