% if mode == 'definition':
Balanced::Refund.save()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

refund = Balanced::Refund.find('/v1/customers/CU7gMTGKh2yGHYn1lUxH9STS/refunds/RF7qwuLxprQJuVGf7sTAdwKc')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% endif
