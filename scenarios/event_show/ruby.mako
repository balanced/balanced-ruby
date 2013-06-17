% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

event = Balanced::Event.find('/v1/events/EV8b1a77a6d54611e2bbc4026ba7f8ec28')

% endif
