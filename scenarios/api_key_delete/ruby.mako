% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

key = Balanced::ApiKey.fetch('/api_keys/AK6gw2iNQrFpQk7jb8ONNjdb')
key.unstore

% elif mode == 'response':

% endif
