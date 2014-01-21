<%= boiler_plate %>
credit = Balanced::Credit.fetch('<%= request['uri'] %>')
credit.description = '<%= payload['description'] %>'
credit.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
credit.save
