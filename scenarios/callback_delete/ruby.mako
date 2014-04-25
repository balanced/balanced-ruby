% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

callback = Balanced::Callback.fetch('/callbacks/CB44XaMOcxsUnuQoA5A4VKCx')
callback.unstore
% elif mode == 'response':

% endif
