<%= boiler_plate %>
order = Balanced::Order.fetch('<%= request['uri'] %>')
order.description = '<%= payload['description'] %>'
order.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
order.save
