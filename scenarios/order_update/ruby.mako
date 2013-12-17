% if mode == 'definition':
Balanced::Order.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

order = Balanced::Order.find('/orders/OR2ZX6pUMpd51Gp1r4OVtxpI')
order.description = 'New description for order'
order.meta = {
    'product.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
order.save

% endif
