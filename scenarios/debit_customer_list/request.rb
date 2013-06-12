<%= boiler_plate %>

customer = Balanced::Customer.find('<%=request['uri']%>')
debits = customer.debits
