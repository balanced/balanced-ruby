% if mode == 'definition':
Balanced::ApiKey.find
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::ApiKey.find('/api_keys/AK1ElcQIYRYfDUlffhRGIClq')
% endif
