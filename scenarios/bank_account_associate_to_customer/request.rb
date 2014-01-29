<%= boiler_plate %>
customer = Balanced::Customer.fetch('<%= request['customer_href'] %>')
customer.add_bank_account("<%= payload['bank_account_href'] %>")
