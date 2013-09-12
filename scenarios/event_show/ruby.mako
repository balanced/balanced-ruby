% if mode == 'definition':
    Balanced::Event.find()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

event = Balanced::Event.find('/v1/events/EVb5fccf0a1b2d11e38c7a026ba7d31e6f')

% endif
