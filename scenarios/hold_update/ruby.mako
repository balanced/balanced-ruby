% if mode == 'definition':
Balanced::Hold.save()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/holds/HL5egN71JHX28fjIq5BbeR0s')
hold.description = 'update this description'
hold.meta = {:"holding.for"=>"user1", :"meaningful.key"=>"some.value"}
hold.save

% endif
