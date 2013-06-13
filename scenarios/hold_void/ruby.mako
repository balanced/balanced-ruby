% if mode == 'definition':
Balanced::Hold.void()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/holds/HL7mo97WlNDLH601wVhD3VTI')
hold.void
% endif
