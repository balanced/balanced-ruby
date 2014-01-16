% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

key = Balanced::ApiKey.find('/api_keys/AK295hFPGxrDCzvr09WnqDUe')
key.unstore

% elif mode == 'response':

% endif
