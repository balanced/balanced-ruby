<%= boiler_plate %>
marketplace = Balanced::Marketplace.my_marketplace

merchant_data = {
<%= params_to_hash.call(payload['merchant']).indent(2) %>
}

account = Balanced::Marketplace.my_marketplace.create_account

begin
  account.promote_to_merchant(merchant_data)
rescue Balanced::MoreInformationRequired => error
  # could not identify this account.
  puts 'redirect merchant to: ' + error.redirect_uri
rescue Balanced::Error => error
  # TODO: handle 400 and 409 exceptions as required
  raise
end
