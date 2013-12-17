<%= boiler_plate %>
card = Balanced::Card.find('<%= request['card_href'] %>')
card.hold(
<%= params_to_hash.call(payload).indent(2) %>
)