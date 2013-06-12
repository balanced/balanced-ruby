<%= boiler_plate %>
bank_account = Balanced::BankAccount.find('<%=request['bank_account_uri']%>')
verification = bank_account.verify
