<%= boiler_plate %>
debit = Balanced::Debit.find('<%= request['debit_href'] %>')
debit.refund(
  :description => '<%= payload['description'] %>',
  :meta => {
<%= params_to_hash_for_args.call(payload['meta']).indent(2) %>
  }
)
