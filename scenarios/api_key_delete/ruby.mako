% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

key = Balanced::ApiKey.fetch('/api_keys/AK1B3lNyPQ63pRQa1JDC5os5')
key.unstore

% elif mode == 'response':

% endif
