% if mode == 'definition':
Balanced::Callback.find

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

callback = Balanced::Callback.find('/v1/callbacks/CB6DYHGJOCaSxYwDz34j5TGa')
% endif
