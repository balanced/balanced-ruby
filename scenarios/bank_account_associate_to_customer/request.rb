<%= boiler_plate %>
customer = Balanced::Customer.find('<%= request['customer_href'] %>')
customer.add_bank_account("<%= payload['bank_account_href'] %>")
