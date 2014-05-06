% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

callback = Balanced::Callback.fetch('/callbacks/CB7DP9sW9wRe19dFRutynahb')
callback.unstore
% elif mode == 'response':

% endif
