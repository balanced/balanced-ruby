<%= boiler_plate %>
buyer = Balanced::Account.find('<%= request['account_uri'] %>')
buyer.hold(
<%= payload.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo} %>
)