<%= boiler_plate %>
hold = Balanced::Hold.find('<%= request['hold_uri'] %>')
debit = hold.capture(
<%= params_to_hash.call(payload).indent(2) %>
)
