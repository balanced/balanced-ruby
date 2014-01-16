% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

callback = Balanced::Callback.find('/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh')
callback.unstore
% elif mode == 'response':

% endif
