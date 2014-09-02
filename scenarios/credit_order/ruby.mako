% if mode == 'definition':
Balanced::Order.credit_to

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

order = Balanced::Order.fetch('/orders/OR4R53c8wdUiVEUiegSHpwaN')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj/credits')
order.credit_to(
    :destination => bank_account,
    :amount => 5000
)
% elif mode == 'response':
{"errors"=>
  [{"additional"=>nil,
    "category_code"=>"order",
    "category_type"=>"logical",
    "description"=>
     "Funding instrument BA2EmblHC08bmwiwwNrbI0Rj is not associated with order customer CU2L981m9AtPY8pjpGpjnjnf or marketplace owner customer CU1mlBGw9Cybp1cbj3Lltvcp Your request id is OHMa013033cdbc911e38d4506429171ffad.",
    "extras"=>{},
    "request_id"=>"OHMa013033cdbc911e38d4506429171ffad",
    "status"=>"Conflict",
    "status_code"=>409}]}

% endif
