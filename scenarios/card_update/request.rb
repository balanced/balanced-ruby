<%= boiler_plate %>
card = Balanced::Card.fetch('<%= request['uri'] %>')
card.meta = {
<%= params_to_hash_for_args.call(payload['meta'])%>
}
card.save
