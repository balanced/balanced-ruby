% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

event = Balanced::Event.find('/v1/events/EV9be5771e4d4811e38afd026ba7d31e6f')

% endif
