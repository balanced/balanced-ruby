% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

key = Balanced::ApiKey.fetch('/api_keys/AK6vYazRHYGP5Tiqeuo9kMUq')
key.unstore

% elif mode == 'response':

% endif
