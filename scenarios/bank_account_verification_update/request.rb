<%= boiler_plate %>
verification = Balanced::Verification.find('<%=request['uri']%>')
<%= payload.map { |k,v| verification.k = v } %>
<%= payload.length.times { |i| verification.#{i} = #{v}; %>
