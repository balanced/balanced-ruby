require 'erb'
require 'json'
require 'net/https'

# pull scenario.cache from Balanced Docs
uri = URI.parse('https://raw.github.com/rloomba/balance-ruby-client/master/scenario.cache')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
data_file =  http.get(uri.request_uri).body

parsed_data = JSON.parse(data_file)

api_key = parsed_data["api_key"]
# boiler plate configuration code used in all scenarios
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

Dir.chdir("./scenarios")
scenario = ARGV[0]
# puts scenario

begin
  template = File.read("./#{scenario}/request.rb")
  # generate new erb template file from each request.rb file
  erb = ERB.new(template)
  request = parsed_data[scenario]['request']
  payload = request['payload']
  # render erb file passing in all local variables
  executable = erb.result(binding)
  STDOUT.write(executable)
rescue Exception => e
  puts "#{scenario} does not contain a valid template file"
end

