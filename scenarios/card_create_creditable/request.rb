<%= boiler_plate %>
card = Balanced::Card.new(
<%= params_to_hash.call(payload).indent(2) %>
).save
