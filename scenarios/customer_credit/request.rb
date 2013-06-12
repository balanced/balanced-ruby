customer = Balanced::Customer.find('<%=request['customer_uri']%>')
customer.credit(:amount => '<%=payload['amount']%>')
