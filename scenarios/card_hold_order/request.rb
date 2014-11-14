<%= boiler_plate %>
card = Balanced::Card.fetch('<%= request['card_href'] %>')
card.hold(
  :amount => <%= request['payload']['amount'] %>,
  :order => '<%=  request['order_href'] %>'
)