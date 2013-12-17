% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

refund = Balanced::Refund.find('/refunds/RF7vf8HUaHD76v6et8ScmI8S')

% endif
