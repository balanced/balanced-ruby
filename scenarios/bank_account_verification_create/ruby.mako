% if mode == 'definition':
    Balanced::Verification.new.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA4j88BlATFZvnLhzeONtsMM')
verification = bank_account.verify

% endif
