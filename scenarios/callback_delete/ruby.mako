% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

callback = Balanced::Callback.fetch('/callbacks/CB6Kwv0b8cXnsPSn3pR88xYk')
callback.unstore
% elif mode == 'response':

% endif
