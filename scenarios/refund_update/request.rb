<%= boiler_plate %>
refund = Balanced::Refund.fetch('<%= request['uri'] %>')
refund.description = '<%= payload['description'] %>'
refund.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
refund.save
