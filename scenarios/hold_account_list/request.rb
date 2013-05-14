<%= boiler_plate %>
account = Balanced::Account.find('<%= request['account_uri'] %>')
holds = account.holds