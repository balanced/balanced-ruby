% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::Card.fetch('/cards/CCOeoFZJMd94AruXU0wuSI9')
card.unstore

% elif mode == 'response':

% endif
