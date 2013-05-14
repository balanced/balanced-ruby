<%= boiler_plate %>
bank_account_info = {
<%="".tap { |s| request['bank_account'].each {|k, v| s << ":#{k} => '#{v}'," } } %>
}

credit = Balanced::Credit.new(
  :amount => <%= request['amount'] %>,
  :bank_account => bank_account_info
).save