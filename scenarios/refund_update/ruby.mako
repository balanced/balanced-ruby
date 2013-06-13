% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

refund = Balanced::Refund.find('/v1/customers/CU6W5pSk2CUXQxhENqyGRvQe/refunds/RF7rcQFmIUkcoIHnpZcnQk5W')
refund.description = 'update this description'
refund.meta = {:"refund.reason"=>"user not happy with product", :"user.notes"=>"very polite on the phone", :"user.refund.count"=>"3"}
refund.save

% endif
