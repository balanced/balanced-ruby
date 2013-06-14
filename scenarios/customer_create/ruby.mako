% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

customer = Balanced::Customer.new.save

% endif
