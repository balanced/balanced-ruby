<%= boiler_plate %>
debit = Balanced::Debit.find('<%= request['debit_uri'] %>')
debit.refund(
    :description => '<%= payload['description'] %>',
    :meta => <%= payload['meta'].inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} %>
)