<%= boiler_plate %>

buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  <%="".tap { |s| payload.each { |k, v| s << ":#{k} => '#{v}'," } } %>)
