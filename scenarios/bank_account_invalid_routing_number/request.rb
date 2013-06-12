<%= boiler_plate %>
bank_account = Balanced::BankAccount.new(
 :uri => '<%=request['uri']%>',
 <%= payload.each {|k,v| ":#{k} => '#{v}'," %> 
)

begin
  bank_account.save
rescue Balanced::BadRequest => ex
  raise "Key is not returned!" unless ex.extras.has_key? "routing_number"
end
