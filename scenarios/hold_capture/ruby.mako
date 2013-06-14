% if mode == 'definition':
Balanced::Hold.capture(...)

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/holds/HL5m1WNF0ste8ap24cZ5bVU4')
debit = hold.capture(
  {:appears_on_statement_as=>"ShowsUpOnStmt", :description=>"Some descriptive text for the debit in the dashboard", :hold_uri=>"/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/holds/HL5m1WNF0ste8ap24cZ5bVU4"}
)

% endif
