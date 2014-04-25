<%= boiler_plate %>
debit = Balanced::Debit.fetch('<%= request['debit_href'] %>')
dispute = debit.dispute
