<%= boiler_plate %>
refund = Balanced::Refund.find('<%= request['uri'] %>')
refund.description = '<%= payload['description'] %>'
refund.meta = <%= payload['meta'].inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} %>
refund.save