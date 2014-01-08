% if mode == 'definition':
Balanced::Event.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

event = Balanced::Event.find('/events/EV905083d0788611e39b52026ba7cac9da')

% endif
