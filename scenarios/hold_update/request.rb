<%= boiler_plate %>
hold = Balanced::Hold.find('<%= request['uri'] %>')
hold.description = '<%= payload['description'] %>'
hold.meta = <%= params_to_hash_for_args.call(payload['meta']) %>
hold.save
