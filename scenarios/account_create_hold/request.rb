<%= boiler_plate %>
account = Balanced::Account.find('<%=request['account_uri']%>')
account.hold(:amount => '<%=payload['amount']%>')
