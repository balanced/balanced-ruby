% if mode == 'definition':
Balanced::Callback.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

callback = Balanced::Callback.find('/callbacks/CB6jiD0h2YZOvtyVIuKXLcNy')
callback.unstore
% endif
