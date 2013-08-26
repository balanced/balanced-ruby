<%= boiler_plate %>
marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('<%= request['uri'] %>')
bank_account.credit(<%= params_to_hash.call(payload) %>)