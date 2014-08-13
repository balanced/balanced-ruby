bank_account = Balanced::BankAccount.new(
  :type => 'checking',
  :routing_number => '121000358',
  :name => 'Johann Bernoulli',
  :account_number => '9900000001'
).save