<%= boiler_plate %>
hold = Balanced::Hold.find('<%= request['hold_uri'] %>')
debit = hold.capture(
  <%= payload.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}.reject { |k,v| k == :hold_uri} %>
)
