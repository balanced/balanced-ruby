<%= boiler_plate %>
merchant = Balanced::Account.find('<%= request['account_uri'] %>')
credits = merchant.credits