% if mode == 'definition':
Balanced::Event.find

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

event = Balanced::Event.find('/events/EVcb2c8000674f11e3893a026ba7d31e6f')

% endif
