% if mode == 'definition':
Balanced::Callback.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

callback = Balanced::Callback.find('/callbacks/CB2uhOJVNLDsih7fq0nq4ppm')
callback.unstore
% elif mode == 'response':

% endif
