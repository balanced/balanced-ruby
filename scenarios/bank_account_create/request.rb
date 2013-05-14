<%= boiler_plate %>
bank_account = Balanced::BankAccount.new(
<%= "".tap { |s| payload.each {|k, v| s << ":#{k} => '#{v}'," } } %>
).save
