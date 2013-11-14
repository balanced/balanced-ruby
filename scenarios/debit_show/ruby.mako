% if mode == 'definition':
Balanced::Debit.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/debits/WD6Ca1z3nrRRCdiYT1evN19S')

% endif
