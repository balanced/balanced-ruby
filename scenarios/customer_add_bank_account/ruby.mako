% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

customer = Balanced::Customer.find('/v1/customers/AC6FO1fS8ypyifj7q31FSvTx')
customer.add_bank_account("/v1/bank_accounts/BA6GQMuP5LafMddzFBrDEi02")

% endif
