<%= boiler_plate %>
key = Balanced::ApiKey.find('<%= request['uri'] %>')
key.unstore
