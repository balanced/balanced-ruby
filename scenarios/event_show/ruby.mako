% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

event = Balanced::Event.find('/v1/events/EVc75db820d3ae11e29834026ba7cac9da')

% endif
