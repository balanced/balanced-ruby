% if mode == 'definition':
Balanced::CardHold.capture

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card_hold = Balanced::CardHold.find('/card_holds/HL24SjfboUx6Fp5L7sRbqcaj')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
