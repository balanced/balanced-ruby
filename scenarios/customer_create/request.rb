<%= boiler_plate %>
customer = Balanced::Customer.new(
<%= params_to_hash.call(payload).indent(2) %>
)
customer.save
