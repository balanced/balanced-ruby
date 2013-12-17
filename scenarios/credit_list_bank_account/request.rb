<%= boiler_plate %>
bank_account = Balanced::BankAccount.find('<%= request['bank_account_href'] %>')
credits = bank_account.credits