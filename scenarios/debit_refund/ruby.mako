% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/debits/WD7HfOnPU0KhbO9WUEGw0qJq')
debit.refund
% endif
