<%= boiler_plate %>
reversal = Balanced::Credit.find('<%= request['credit_href'] %>')
credit.reverse(
  :amount => <%= payload['amount'] %>,
  :description => '<%= payload['description'] %>',
  :meta => {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
  }
)
