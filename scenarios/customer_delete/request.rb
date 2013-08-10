customer = Balanced::Customer.find('<%=request['customer_uri']%>')
customer.unstore
