% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

callback = Balanced::Callback.fetch('/callbacks/CBwxLHWPLsoBqKqVyUvZRKp')
callback.unstore
% elif mode == 'response':

% endif
