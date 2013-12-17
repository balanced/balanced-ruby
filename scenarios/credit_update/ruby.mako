% if mode == 'definition':
Balanced::Credit.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

credit = Balanced::Credit.find('/credits/CR2pUwe19efJ5Czp1W3BDJSC')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% endif
