<%= boiler_plate %>
debit = Balanced::Debit.find('<%= request['uri'] %>')
debit.description = '<%= payload['description'] %>'
debit.meta = <%= params_to_hash_for_args.call(payload['meta']) %>
debit.save
