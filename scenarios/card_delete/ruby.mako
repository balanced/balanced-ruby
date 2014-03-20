% if mode == 'definition':
Balanced::Card.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::Card.fetch('/cards/CC7fN4xs3PRrK3LBCuPSVxc4')
card.unstore

% elif mode == 'response':

% endif
