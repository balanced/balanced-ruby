% if mode == 'definition':
Balanced::Hold.save()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/holds/HL7bjNLGObnfJJhcKdOjTon5')
hold.description = 'update this description'
hold.meta = {:"holding.for"=>"user1", :"meaningful.key"=>"some.value"}
hold.save

% endif
