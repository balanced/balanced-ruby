<%= boiler_plate %>
order = Balanced::Order.fetch('<%= request['order_href'] %>')
bank_account = Balanced::BankAccount.fetch('<%= request['bank_account_href'] %>')
order.credit_to(
    :destination => bank_account,
    :amount => <%= request['payload']['amount'] %>
)