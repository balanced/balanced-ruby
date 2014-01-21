<%= boiler_plate %>
verification = Balanced::Verification.fetch('<%=request['uri']%>')
<% payload.each do |k,v| %>
verification.<%=k%> = <%=v%>
<% end %>
verification.save
