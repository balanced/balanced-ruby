<%= boiler_plate %>
callback = Balanced::Callback.fetch('<%=request['uri']%>')
callback.unstore