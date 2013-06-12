<%= boiler_plate %>
customer = Balanced::Customer.find('<%=request['uri']%>')
customer.debit(:amount => '<%=payload['amount']%>', :hold_uri => '<%=payload['hold_uri']%>')
