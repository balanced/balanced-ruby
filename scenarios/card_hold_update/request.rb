<%= boiler_plate %>
card_hold = Balanced::CardHold.fetch('<%= request['uri'] %>')
card_hold.description = '<%= payload['description'] %>'
card_hold.meta = {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
}
card_hold.save
