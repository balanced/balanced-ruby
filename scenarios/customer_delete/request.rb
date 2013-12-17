customer = Balanced::Customer.find('<%=request['uri']%>')
customer.unstore
