<%= boiler_plate %>
bank_account = Balanced::BankAccount.fetch('<%= request['bank_account_href'] %>')
bank_account.debit(
<%= params_to_hash.call(payload).indent(2) %>
)
