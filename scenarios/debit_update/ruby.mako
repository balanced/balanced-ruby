% if mode == 'definition':
Balanced::Debit.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

debit = Balanced::Debit.find('/debits/WD500frFtCKu4tazwIDPXHjs')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% endif
