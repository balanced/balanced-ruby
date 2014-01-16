<%= boiler_plate %>
card = Balanced::Card.find('<%= request['uri'] %>')
card.associate_to_customer('<%= payload['customer'] %>')
