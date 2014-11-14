<%= boiler_plate %>
order = Balanced::Order.fetch('<%=  request['order_href'] %>')
bank_account = Balanced::BankAccount.fetch('<%= request['bank_account_href'] %>')
order.debit_from(
    :source => bank_account,
    :amount => <%= request['payload']['amount'] %>
)
