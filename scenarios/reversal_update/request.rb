<%= boiler_plate %>
reversal = Balanced::Reversal.fetch('<%= request['uri'] %>')
reversal.description = '<%= payload['description'] %>'
reversal.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
reversal.save
