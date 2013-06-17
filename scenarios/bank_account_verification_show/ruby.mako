% if mode == 'definition':
Balanced::Verification.find()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

verification = Balanced::Verification.find('/v1/bank_accounts/BA4rddoEDsMKlG1vSXAnkrT2/verifications/BZ4rN0mLXhpypdxLvRaKFt3F')

% endif
