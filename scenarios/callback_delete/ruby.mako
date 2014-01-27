% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

callback = Balanced::Callback.fetch('/callbacks/CB224374R2NSyoYBpDV4r7C2')
callback.unstore
% elif mode == 'response':

% endif
