% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

callback = Balanced::Callback.fetch('/callbacks/CB6K21Z5b8imJRPeZEBoHPq')
callback.unstore
% elif mode == 'response':

% endif
