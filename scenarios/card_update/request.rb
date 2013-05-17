<%= boiler_plate %>
card = Balanced::Card.find('<%= request['uri'] %>')
card.meta = {
<%= params_to_hash.call(payload['meta'])%>
}
card.save
