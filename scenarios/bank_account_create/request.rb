<%= boiler_plate %>
bank_account = Balanced::BankAccount.new(
<%= params_to_hash.call(payload) %>
).save
