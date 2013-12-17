% if mode == 'definition':
Balanced::Card.debit
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::Card.find('/cards/CC2h52tnQKGgHS7tV7gYIBuK')
card.debit(
  :appears_on_statement_as => 'Statement text',
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
