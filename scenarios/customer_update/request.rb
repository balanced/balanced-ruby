<%= boiler_plate %>
customer = Balanced::Customer.fetch('<%= request['uri'] %>')
customer.email = '<%= payload['email'] %>'
customer.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
customer.save
