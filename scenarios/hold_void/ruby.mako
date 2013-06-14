% if mode == 'definition':
Balanced::Hold.void()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/holds/HL5ptvs6CKB2jsZOhuNNmGOA')
hold.void
% endif
