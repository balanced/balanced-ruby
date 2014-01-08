% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

credit = Balanced::Credit.find('/credits/CR56eBUnwbYLwR2KltuqmOLe')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% endif
