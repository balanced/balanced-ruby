<%= boiler_plate %>
bank_account = Balanced::BankAccount.fetch('<%= request['bank_account_href'] %>')
credits = bank_account.credits