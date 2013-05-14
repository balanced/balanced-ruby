<%= boiler_plate %>
card = Balanced::Card.find('<%= request['uri'] %>')
card.meta = {
<%="".tap { |s| payload['meta'].each {|k, v| s << ":#{k} => '#{v}'," } } %>
}
card.save