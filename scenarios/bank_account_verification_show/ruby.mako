% if mode == 'definition':
Balanced::Verification.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

verification = Balanced::Verification.find('/verifications/BZ4klzwKUlpJtnu3wwcpUS9p')

% endif
