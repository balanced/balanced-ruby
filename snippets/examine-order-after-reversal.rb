@order = Balanced::Order.find(order_href)
@order.amount           # original order amount
@order.amount_escrowed  # will increase by amount of reversed credit