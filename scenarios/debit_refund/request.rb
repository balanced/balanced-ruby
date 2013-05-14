<%= boiler_plate %>
debit = Balanced::Debit.find('<%= request['debit_uri'] %>')
debit.refund