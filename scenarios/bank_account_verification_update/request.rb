<%= boiler_plate %>
verification = Balanced::Verification.find('<%=request['uri']%>')
<% payload.each do |k,v| %>
verification.<%=k%> = <%=v%>
<% end %>
verification.save
