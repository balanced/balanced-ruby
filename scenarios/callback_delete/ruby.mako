% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

callback = Balanced::Callback.fetch('/callbacks/CB2xCnObyAUU1V658GVuRyCI')
callback.unstore
% elif mode == 'response':

% endif
