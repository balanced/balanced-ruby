% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

customer = Balanced::Customer.find('/v1/customers/AC6TepGAIZ5HUdhfTZKOoUhh')
customer.add_bank_account("/v1/bank_accounts/BA6V90Tau7B5YTGPFjC0PlzA")

% endif
