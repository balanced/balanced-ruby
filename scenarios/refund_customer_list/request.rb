<%= boiler_plate %>
customer = Balanced::Customer.find('<%= request['customer_uri'] %>')
refunds = customer.refunds
