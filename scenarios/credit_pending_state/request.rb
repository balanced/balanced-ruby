<%= boiler_plate %>
bank_account_info = {
<%= params_to_hash.call(request['bank_account']) %>
}

credit = Balanced::Credit.new(
  :amount => <%= request['amount'] %>,
  :bank_account => bank_account_info
).save
