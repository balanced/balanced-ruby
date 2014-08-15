bank_account = Balanced::BankAccount.new(
  :name => 'Henry Ford',
  :routing_number => '321174851',
  :account_number => '0987654321',
  :type => 'checking'
).save

bank_account.associate_to_customer(merchant)