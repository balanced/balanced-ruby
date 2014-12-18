% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::Card.fetch('/cards/CC73IyzxPUu2z89NH8GrJhLn')
card.unstore

% elif mode == 'response':

% endif
