<%= boiler_plate %>
hold = Balanced::Hold.find('<%= request['uri'] %>')
hold.description = '<%= payload['description'] %>'
hold.meta = <%= payload['meta'].inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} %>
hold.save