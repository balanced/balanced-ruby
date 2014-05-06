<%= boiler_plate %>
order = Balanced::Order.fetch('<%=  request['order_href'] %>')
card = Balanced::Card.fetch('<%= request['card_href'] %>')
order.debit_from(
    :source => card,
    :amount => <%= request['payload']['amount'] %>
)
