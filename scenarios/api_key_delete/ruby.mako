% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

key = Balanced::ApiKey.fetch('/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX')
key.unstore

% elif mode == 'response':

% endif
