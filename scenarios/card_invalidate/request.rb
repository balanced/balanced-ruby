<%= boiler_plate %>
card = Balanced::Card.find('<%= request['uri'] %>')
card.invalidate