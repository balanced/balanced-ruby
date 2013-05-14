<%= boiler_plate %>
buyer = Balanced::Account.find('<%= request['account_uri'] %>')
refunds = buyer.refunds