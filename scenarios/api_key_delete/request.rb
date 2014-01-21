<%= boiler_plate %>
key = Balanced::ApiKey.fetch('<%= request['uri'] %>')
key.unstore
