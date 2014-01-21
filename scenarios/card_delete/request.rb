<%= boiler_plate %>
card = Balanced::Card.fetch('<%=request['uri']%>')
card.unstore
