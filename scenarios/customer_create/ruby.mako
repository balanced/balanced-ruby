% if mode == 'definition':
Balanced::Customer.new

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

customer = Balanced::Customer.new(
  :name => 'Henry Ford',
  :dob_year => 1963,
  :dob_month => 7,
  :address => {
    :postal_code => '48120'
  }
)
customer.save

% endif
