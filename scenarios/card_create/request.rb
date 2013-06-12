<%= boiler_plate %>
card = Balanced::Card.new(
  :uri => '<%= request['uri']%>',
<%= params_to_hash.call(payload) %>
).save
