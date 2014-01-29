<%= boiler_plate %>
bank_account = Balanced::BankAccount.fetch('<%=request['uri']%>')
bank_account.unstore
