% if mode == 'definition':
Balanced::ApiKey.unstore
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::ApiKey.unstore

% endif
