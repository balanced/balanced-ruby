% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

key = Balanced::ApiKey.fetch('/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp')
key.unstore

% elif mode == 'response':

% endif
