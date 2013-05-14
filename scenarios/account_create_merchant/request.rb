<%= boiler_plate %>
account = Balanced::Account.find('<%=request['uri']%>')
account.add_bank_account("<%=payload['bank_account_uri']%>")
