% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

refund = Balanced::Refund.find('/refunds/RF7vf8HUaHD76v6et8ScmI8S')
refund.description = 'update this description'
refund.meta = {
    'user.refund.count' => '3',
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone'
}
refund.save

% endif
