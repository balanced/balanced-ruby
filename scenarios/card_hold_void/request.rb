<%= boiler_plate %>
card_hold = Balanced::CardHold.fetch('<%= request['uri'] %>')
card_hold.unstore