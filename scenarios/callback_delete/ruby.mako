% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

callback = Balanced::Callback.fetch('/callbacks/CB3dRHClJeZ4UFqbLZsR6vUW')
callback.unstore
% elif mode == 'response':

% endif
