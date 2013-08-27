% if mode == 'definition':
Balanced::Hold.void()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/holds/HL15SKbacqwCIDMvoCQx3GbB')
hold.void
% endif
