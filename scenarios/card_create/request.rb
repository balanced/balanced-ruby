<%= boiler_plate %>
card = Balanced::Card.new(
  :uri => '<%= request['uri']%>',
<%= "".tap { |s| payload.each {|k, v| s << ":#{k} => '#{v}'," } } %>
).save