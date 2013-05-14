<%= boiler_plate %>
bank_account = Balanced::BankAccount.find('<%=request['uri']%>')
bank_account.destroy
