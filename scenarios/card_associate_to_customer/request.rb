<%= boiler_plate %>
customer = Balanced::Customer.find('<%= request['uri'] %>')
customer.add_card('<%= payload['card_uri'] %>')
