<%= boiler_plate %>
order = Balanced::Order.new(
<%= params_to_hash.call(payload).indent(2) %>
)
order.save