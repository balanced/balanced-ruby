% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

callback = Balanced::Callback.fetch('/callbacks/CB5pnz4XnaDpRFGlNMb6u50R')
callback.unstore
% elif mode == 'response':

% endif
