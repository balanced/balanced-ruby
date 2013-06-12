<%= boiler_plate %>
verification = Balanced::Verification.find('<%=request['uri']%>')
<%= payload.map { |k,v| verification } %>
verification.save
