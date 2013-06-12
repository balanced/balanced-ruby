<%= boiler_plate %>
marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('<%= request['uri'] %>')
credits = bank_account.credits