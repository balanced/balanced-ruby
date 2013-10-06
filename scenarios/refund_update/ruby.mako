% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

refund = Balanced::Refund.find('/v1/customers/CUuDKfPHvZhTmaNbEsg1BOO/refunds/RFHBiohkzkfO6RPYOrjc9US')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% endif
