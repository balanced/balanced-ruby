<%= boiler_plate %>
order = Balanced::Order.fetch('<%=  request['order_href'] %>')
card = Balanced::Card.fetch('<%= request['card_href'] %>')
order.credit_to(
    :source => card,
    :amount => <%= request['payload']['amount'] %>
)