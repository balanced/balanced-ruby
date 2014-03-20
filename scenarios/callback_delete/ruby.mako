% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

callback = Balanced::Callback.fetch('/callbacks/CB6X0CIZ60usYCaBAazlT8VG')
callback.unstore
% elif mode == 'response':

% endif
