<%= boiler_plate %>
order = Balanced::Order.fetch('<%= request['payload']['order'] %>')
card = Balanced::Card.fetch('<%= request['card_href'] %>')
order.debit_from(
    :source => card,
    :amount => '<%= request['payload']['amount'] %>'
)
