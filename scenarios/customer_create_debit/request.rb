<%= boiler_plate %>
customer = Balanced::Customer.find('<%=request['customer_uri']%>')
customer.debit(:amount => '<%=payload['amount']%>')
