<%= boiler_plate %>
bank_account = Balanced::BankAccount.find('<%= request['bank_account_href'] %>')
bank_account.credit(<%= params_to_hash.call(payload) %>)