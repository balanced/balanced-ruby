<%= boiler_plate %>
debit = Balanced::Debit.find('<%= request['uri'] %>')
debit.description = '<%= payload['description'] %>'
debit.meta = <%= payload['meta'].inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} %>
debit.save