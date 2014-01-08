% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

verification = Balanced::Verification.find('/verifications/BZ4klzwKUlpJtnu3wwcpUS9p')

verification.amount_1 = 1

verification.amount_2 = 1

verification.save

% endif
