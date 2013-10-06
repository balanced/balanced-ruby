% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

event = Balanced::Event.find('/v1/events/EVba70d17a2ec511e38f60026ba7cac9da')

% endif
