% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

event = Balanced::Event.find('/v1/events/EV8c8e419e0e9e11e39281026ba7d31e6f')

% endif
