<%= boiler_plate %>
marketplace = Balanced::Marketplace.my_marketplace

merchant = Balanced::Account.find('<%= request['account_uri'] %>')
merchant.credit('<%= payload['amount'] %>')