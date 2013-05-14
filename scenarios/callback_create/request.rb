<%= boiler_plate %>
callback = Balanced::Callback.new(
  <%= "".tap { |s| payload.each {|k, v| s << ":#{k} => '#{v}'," } } %>
    ).save
