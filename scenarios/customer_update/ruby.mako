% if mode == 'definition':
Balanced::Customer.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

customer = Balanced::Customer.find('/customers/CU5esv6I9LkXVtJBe8zPdq8g')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% endif
