<%= boiler_plate %>
account = Balanced::Account.find('<%= request['uri'] %>')
debits = account.debits