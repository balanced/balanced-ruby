% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

key = Balanced::ApiKey.find('/api_keys/AK3Tg2FrgGv8IkNFTMEyEmqA')
key.unstore

% elif mode == 'response':

% endif
