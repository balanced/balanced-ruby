module Balanced

  class Error

    class OrderCancelFailure < Balanced::StandardError;

    end

  end

  class Order
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:orders]

    def cancel
      reload

      # shouldn't fail unless there's a network outage
      # let's just hope there's not (for the sake of time)
      self.debits.map { |d|
        begin
          d.refund rescue d.refunds.to_a
        end }.flatten
    end

    alias refund cancel

    def debit_from(options={})
      Balanced::Utils.assert_required_keys(options, :required => [:source, :amount])

      source = options[:source]
      amount = options[:amount]
      
      # extra parameters for labeling transactions 
      description = options[:description]
      appears_on_statement_as = options[:appears_on_statement_as]

      debit = source.debit(
          :amount => amount,
          :order => self.href,
          :appears_on_statement_as => appears_on_statement_as,
          :description => description
      )

      debit
    end

    def credit_to(options={})
      Balanced::Utils.assert_required_keys(options, :required => [:destination, :amount])
      
      destination = options[:destination]
      amount = options[:amount]
      
      # extra parameters for labeling transactions 
      description = options[:description]
      appears_on_statement_as = options[:appears_on_statement_as]
      
      # should have a way here to disburse more funds to another account, but not required
      credit = destination.credit(
        :amount => amount, 
        :order => self.href,
        :appears_on_statement_as => appears_on_statement_as,
        :description => description
      )
        
      credit
    end

    private

    def has_initiated_credits?
      self.credits.total != 0
    end

    def has_initiated_refunds?
      self.refunds.total != 0
    end

    def has_initiated_reversals?
      self.reversals.total != 0
    end

    def has_initiated_debits?
      self.debits.total != 0
    end

  end
end
