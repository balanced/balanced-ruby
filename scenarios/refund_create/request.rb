<%= boiler_plate %>
debit = Balanced::Debit.fetch('<%= request['debit_href'] %>')
debit.refund(
  :amount => <%= payload['amount'] %>,
  :description => '<%= payload['description'] %>',
  :meta => {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
  }
)
