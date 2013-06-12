<%= boiler_plate %>

buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  <%= params_to_hash.call(payload) %>)
