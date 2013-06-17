% if mode == 'definition':
Balanced::Account.add_card

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/accounts/AC4FqqEyFyTcd3eHhh2YXL4c')
response = account.add_card('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/cards/CC4GL1SYTyLy6nW6nf4kWw0w')

% endif
