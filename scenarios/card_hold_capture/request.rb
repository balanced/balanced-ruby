<%= boiler_plate %>
card_hold = Balanced::CardHold.find('<%= request['card_hold_href'] %>')
debit = card_hold.capture(
<%= params_to_hash.call(payload).indent(2) %>
)
