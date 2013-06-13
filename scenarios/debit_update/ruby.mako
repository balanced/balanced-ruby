% if mode == 'definition':
Balanced::Debit.save()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/debits/WD706iriHZn5MZEyQ86DmHmE')
debit.description = 'New description for debit'
debit.meta = {:anykey=>"valuegoeshere", :"facebook.id"=>"1234567890"}
debit.save

% endif
