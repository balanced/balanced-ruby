<%= boiler_plate %>
bank_account = Balanced::BankAccount.fetch('<%= request['uri'] %>')
bank_account.meta = {
<%= params_to_hash_for_args.call(payload['meta'])%>
}
bank_account.save
