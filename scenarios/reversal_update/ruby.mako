% if mode == 'definition':
Balanced::Reversal.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

reversal = Balanced::Reversal.find('/reversals/RV5RIa8l6ELnOMizSuGlneMG')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
reversal.save

% endif
