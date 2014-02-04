module Balanced
  # A customer represents a business or person within your Marketplace. A
  # customer can have many funding instruments such as cards and bank accounts
  # associated to them.
  #
  class Customer

    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:customers]

    # Attempts to find an existing customer by email
    #
    # *NOTE:* There is no unique constraint on email_address.
    #         Multiple customers with the same email may exist.
    #         Only one Customer is returned.
    #
    # @param [String] email An email of a customer
    # @return [Customer] if customer is found
    # @return [nil] if customer is not found
    def self.find_by_email email
      self.find(:first, :email => email)
    end

    def self.owner
      owner_customer = Balanced::Marketplace.mine.owner_customer
      owner_customer
    end

    def debit(options = {})
      if self.source.nil?
        raise "No source available for #{self}"
      end
      self.source.debit(options)
    end

    def credit(options = {})
      if self.destination.nil?
        raise "No destination available for #{self}"
      end
      self.destination.credit(options)
    end

    def create_order(options = {})
      options[:href] = self.orders.href
      order = Balanced::Order.new(options)
      order.save
    end

    # Associates the Card represented by 'card' with this Customer.
    #
    # @return [Customer]
    def add_source(source)
      if source.is_a?(Balanced::Resource)
        self.links['source'] = source.id
      else
        self.links['source'] = source
      end
      save
    end

    # Associates the BankAccount represented by bank_account with this
    # Customer.
    #
    # @return [Customer]
    def add_destination(destination)
      if destination.is_a?(Balanced::Resource)
        self.links['destination'] = destination.id
      else
        self.links['destination'] = destination
      end
      save
    end

    def deposit_account
      @_deposit_account ||= self.accounts.where(
          :account_type => Balanced::Account::DEPOSIT
      ).first
    end
    alias deposit_acct deposit_account

    def line_of_credit_account
      @_line_of_credit_account ||= self.accounts.where(
          :account_type => Balanced::Account::LINE_OF_CREDIT
      ).first
    end
    alias line_of_credit_acct line_of_credit_account

  end
end
