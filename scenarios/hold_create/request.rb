<%= boiler_plate %>
hold = Balanced::Hold.new(
<%= params_to_hash.call(payload).indent(2) %>
)
hold.save