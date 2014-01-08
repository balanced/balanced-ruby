% if mode == 'definition':
Balanced::Order.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

order = Balanced::Order.find('/orders/OR5AOoaQjkwOtqSHYre71kou')
order.description = 'New description for order'
order.meta = {
    'anykey' => 'valuegoeshere',
    'product.id' => '1234567890'
}
order.save

% endif
