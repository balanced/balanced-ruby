<%= boiler_plate %>
order = Balanced::Order.fetch('<%= request['payload']['order'] %>')
bank_account = Balanced::BankAccount.fetch('<%= request['bank_account_href'] %>')
order.credit_to(
    :source => card,
    :amount => '<%= request['payload']['amount'] %>'
)