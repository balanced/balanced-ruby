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

    # Returns an Account with type 'payable'
    #
    # @return [Customer]
    def payable_account
      payable_account = self.accounts.where(:type=>'payable').first
      payable_account
    end

  end
end
