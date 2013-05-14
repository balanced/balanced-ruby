<%= boiler_plate %>
marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('<%=request['uri']%>')
bank_account.credit('<%=request['amount']%>')
