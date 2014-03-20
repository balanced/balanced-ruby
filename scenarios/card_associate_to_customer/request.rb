<%= boiler_plate %>
card = Balanced::Card.fetch('<%= request['uri'] %>')
card.associate_to_customer('<%= payload['customer'] %>')