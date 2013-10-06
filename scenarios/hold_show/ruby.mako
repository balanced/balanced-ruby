% if mode == 'definition':
Balanced::Hold.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/holds/HLgZ3lv8DVAtfnxDJmieJ5S')

% endif
