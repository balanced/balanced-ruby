<%= boiler_plate %>
account = Balanced::Account.find('<%=request['uri']%>')
response = account.add_card('<%= payload['card_uri']%>')
