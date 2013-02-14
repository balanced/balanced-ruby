"""
Welcome weary traveller. Sick of polling for state changes? Well today have I
got good news for you. Run this example below to see how to get yourself some
callback goodness and to understand how events work.
"""
cwd = File.dirname(File.dirname(File.absolute_path(__FILE__)))
$:.unshift(cwd + "/lib")
require 'balanced'
require 'net/http'
require 'uri'
require 'json'

api_key = Balanced::ApiKey.new.save
Balanced.configure(api_key.secret)
marketplace = Balanced::Marketplace.new.save

# mumble, let's create a requestb.in
request_bin = Net::HTTP.post_form(URI.parse('http://requestb.in/api/v1/bins'), {})
response = JSON.parse request_bin.body
bin_name = response['name']
callback_url = 'http://requestb.in/' + bin_name
requests_url = 'http://requestb.in/api/v1/bins/%s/requests' % bin_name

puts 'let\'s create a callback'
marketplace.create_callback(
    :url => callback_url
)

puts 'let\'s create a card and associate it with a new account'
card = Balanced::Card.new(
    :expiration_month => '12',
    :security_code => '123',
    :card_number => '5105105105105100',
    :expiration_year => '2020'
).save()
buyer = Balanced::Account.new(
    'card_uri' => card.uri
).save()

puts 'generate a debit (which implicitly creates and captures a hold)'
buyer.debit(:amount => 100)

puts 'event creation is an async operation, let\'s wait until we have ' \
          'some events!'
while Balanced::Event.find(:all).length == 0
  puts 'Zzzz'
  sleep(0)
end

  puts 'Woop, we got some events, let us see what there is to look at'
for event in Balanced::Event.find(:all)
  puts 'this was a %s event, it occurred at %s, the callback has a ' \
            'status of %s' % [
            event.type,
            event.occurred_at,
            event.callback_statuses
        ]
end

puts 'you can inspect each event to see the logs'
event = Balanced::Event.find(:first)
for callback in event.callbacks
  puts 'inspecting callback to %s for event %s' % [
            callback.url,
            event.type
        ]

  for log in callback.logs
    puts 'this attempt to the callback has a status of %s' % [log.status]
  end
end

puts 'ok, let\'s check with requestb.in to see if our callbacks fired at %s' % callback_url
uri = URI.parse(requests_url)
request_bin = Net::HTTP.get_response(uri)
response = JSON.parse request_bin.body
puts 'we received %s callbacks, you can view them at http://requestb.in/%s?inspect' % [
    response.length,
    bin_name,
]
