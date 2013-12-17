% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

credit = Balanced::Credit.find('/credits/CR6x7BgJcM3crRTYfyW9krYI')
% endif
