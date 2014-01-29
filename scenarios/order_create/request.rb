<%= boiler_plate %>
merchant_customer = Balanced::Customer.fetch('<%= request['customer_href'] %>')
merchant_customer.create_order(
<%= params_to_hash.call(payload).indent(2) %>
)