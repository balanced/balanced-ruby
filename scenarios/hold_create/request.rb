<%= boiler_plate %>
customer = Balanced::Customer.find('<%= request['customer_uri'] %>')
customer.hold(
<%= params_to_hash.call(payload).indent(2) %>
)
