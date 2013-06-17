<%= boiler_plate %>
buyer = Balanced::Account.find('<%= request['account_uri'] %>')
buyer.hold(
<%= params_to_hash_for_args.call(payload) %>
)
