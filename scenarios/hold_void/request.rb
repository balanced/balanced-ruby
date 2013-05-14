<%= boiler_plate %>
hold = Balanced::Hold.find('<%= request['uri'] %>')
hold.void