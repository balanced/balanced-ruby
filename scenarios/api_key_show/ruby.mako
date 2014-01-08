% if mode == 'definition':
Balanced::ApiKey.find
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

card = Balanced::ApiKey.find('/api_keys/AK4ed1gCFnppGxCqCJ69bKPg')
% endif
