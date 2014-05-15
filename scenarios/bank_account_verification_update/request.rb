<%= boiler_plate %>
verification = Balanced::BankAccountVerification.fetch('<%=request['uri']%>')
verification.confirm(
<%= params_to_key_word_arguments.call(payload).indent(2)%>
)

