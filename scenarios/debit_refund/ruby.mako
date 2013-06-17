% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/debits/WD5aKzkNv487e4XjjbbfV5TU')
debit.refund
% endif
