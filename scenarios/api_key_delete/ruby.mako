% if mode == 'definition':
Balanced::ApiKey.unstore
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

key = Balanced::ApiKey.fetch('/api_keys/AK2TWX3j6gK68Qk8w4ZEqfmM')
key.unstore

% elif mode == 'response':

% endif
