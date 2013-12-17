<%= boiler_plate %>
card_hold = Balanced::CardHold.find('<%= request['uri'] %>')
card_hold.void