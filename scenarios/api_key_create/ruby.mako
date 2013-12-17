% if mode == 'definition':
Balanced::ApiKey.new

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

key = Balanced::ApiKey.new.save

% endif
