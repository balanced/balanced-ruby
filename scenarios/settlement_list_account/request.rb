<%= boiler_plate %>
account = Balanced::Account.fetch('<%= request['account_href'] %>')
account.settlements