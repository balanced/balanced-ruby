<%= boiler_plate %>
card = Balanced::Card.fetch('<%= request['card_href'] %>')
card.credit(
<%= params_to_hash.call(payload).indent(2) %>
)
