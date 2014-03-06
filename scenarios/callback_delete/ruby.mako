% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

callback = Balanced::Callback.fetch('/callbacks/CB40OMtABWHqkGcBEYpWVnAd')
callback.unstore
% elif mode == 'response':

% endif
