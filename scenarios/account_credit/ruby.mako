% if mode == 'definition':
Balanced::Account.credit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

account = Balanced::Account.fetch('/accounts/AT68yF0GzJByks2OxU6oNjPy')
account.credit(
  :amount => 1000,
  :appears_on_statement_as => 'ThingsCo',
  :description => 'A simple credit',
  :meta => {
    :rating => 8
  },
  :order => '/orders/OR6c6n11zKSFfjE6kGNKtsE8'
)
% elif mode == 'response':
#<Balanced::Credit:0x007fcde12a3580
 @attributes=
  {"amount"=>1000,
   "appears_on_statement_as"=>"ThingsCo",
   "created_at"=>"2014-12-17T21:24:09.952905Z",
   "currency"=>"USD",
   "description"=>"A simple credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR6eZ4ImaC1iLixxrkHsoqcg",
   "id"=>"CR6eZ4ImaC1iLixxrkHsoqcg",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"AT68yF0GzJByks2OxU6oNjPy",
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8"},
   "meta"=>{"rating"=>"8"},
   "status"=>"succeeded",
   "transaction_number"=>"CRP9Y-4QQ-VGRE",
   "updated_at"=>"2014-12-17T21:24:10.051544Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde12a1938/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde12abfa0/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde12aa128/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde12a8788/lib/balanced/resources/resource.rb:56 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde12b28f0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
