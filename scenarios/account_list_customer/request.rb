<%= boiler_plate %>
customer = Balanced::Customer.fetch('<%= request['customer_href'] %>')
customer.accounts