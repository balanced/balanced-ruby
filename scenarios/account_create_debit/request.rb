<%= boiler_plate %>
account = Balanced::Account.find('<%=request['uri']%>')
account.debit(:amount => '<%=payload['amount']%>')
