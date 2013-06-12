<%= boiler_plate %>
customer = Balanced::Customer.find('<%=request['uri']%>')
response = customer.add_card('<%= payload['card_uri']%>')
