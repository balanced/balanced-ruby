% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

callback = Balanced::Callback.fetch('/callbacks/CB2YCHTwHXMx9fZRKSbW3wNj')
callback.unstore
% elif mode == 'response':

% endif
