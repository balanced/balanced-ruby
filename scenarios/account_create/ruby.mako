% if mode == 'definition':
Balanced::Account.new

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

account = Balanced::Marketplace.my_marketplace.create_account

% endif
