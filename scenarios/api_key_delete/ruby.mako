% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

key = Balanced::ApiKey.fetch('/api_keys/AK4Vt1mJyCtjdSiGgqAebarR')
key.unstore

% elif mode == 'response':

% endif
