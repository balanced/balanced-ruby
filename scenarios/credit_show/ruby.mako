% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/credits/CR4PR7caYHW7H4SFJsSDQ5So')
% endif
