module Balanced

  class ApiKey < Resource
  end

  class Account < Resource


    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    def debit (amount=nil,
        appears_on_statement_as=nil,
        hold_uri=nil,
        meta={},
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
          :uri => self.credits_uri,
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
      # TODO: use query
      response = Balanced.get collection_path
      return nil if response.body.to_s.length.zero? or response.body['total'] == 0
      payload = response.body
      construct_from_response payload['items'][0]
    end

    def me
      self.class.me
    end

  end

  class Marketplace < Resource

    def self.my_marketplace
      # TODO: use query
      response = Balanced.get collection_path
      return nil if response.body.to_s.length.zero? or response.body['total'] == 0
      payload = response.body
      construct_from_response payload['items'][0]
    end

    def my_marketplace
      self.class.my_marketplace
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

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    def void
      @is_void = true
      save
    end

    def capture amount=nil, appears_on_statement_as=nil, meta={}, description=nil
      amount ||= self.amount
      self.account.debit(amount, appears_on_statement_as, self.uri, meta, description)
    end

  end

  class Debit < Resource

    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

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
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  class Refund < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  class Transaction < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

  end

  class Card < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    def debit amount=nil, appears_on_statement_as=nil, holds_uri=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, holds_uri, meta, description, self.uri)
    end

    def hold amount=nil, meta=nil
      self.account.hold(amount, meta, self.uri)
    end
  end

  class BankAccount < Resource
    def initialize attributes = {}
      Balanced::Utils.stringify_keys! attributes
      unless attributes.has_key? 'uri'
        attributes['uri'] = Balanced::Marketplace.my_marketplace.send(self.class.collection_name + '_uri')
      end
      super attributes
    end

    def debit amount, appears_on_statement_as=nil, meta={}, description=nil
      self.account.debit(amount, appears_on_statement_as, meta, description, self.uri)
    end

    def credit amount, description=nil, meta={}
      self.account.credit(amount, description, meta, self.uri)
    end
  end

end