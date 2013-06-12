<%= boiler_plate %>
customer = Balanced::Customer.find('<%=request['customer_uri']%>')
customer.hold(:amount => '<%=payload['amount']%>')
