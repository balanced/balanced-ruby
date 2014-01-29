<%= boiler_plate %>
debit = Balanced::Debit.fetch('<%= request['uri'] %>')
debit.description = '<%= payload['description'] %>'
debit.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
debit.save
