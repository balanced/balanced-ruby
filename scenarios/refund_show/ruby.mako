% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

refund = Balanced::Refund.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/refunds/RF5vCZH6cVJzfoyqPDLVjBvU')

% endif
