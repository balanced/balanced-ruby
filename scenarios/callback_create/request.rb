<%= boiler_plate %>
callback = Balanced::Callback.new(
<%= params_to_hash.call(payload).indent(2) %>
).save
