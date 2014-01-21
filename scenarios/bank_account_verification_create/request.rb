<%= boiler_plate %>
bank_account = Balanced::BankAccount.fetch('<%=request['bank_account_uri']%>')
verification = bank_account.verify
