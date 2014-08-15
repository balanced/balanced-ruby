merchant = Balanced::Customer.new(
  :name => 'Henry Ford',
  :dob_month => 7,
  :dob_year => 1963,
  :address => {
    :postal_code => '48120'
  }
).save