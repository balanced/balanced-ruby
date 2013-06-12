require 'erb'
require 'json'
require 'net/https'
require_relative 'helpers'

# pull scenario.cache from Balanced Docs
parsed_data = JSON.parse(File.read('./scenario.cache'))

api_key = parsed_data["api_key"]
# boiler plate configuration code used in all scenarios
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

params_to_hash = @helpers[:params_to_hash]
params_to_hash_for_args = @helpers[:params_to_hash_for_args]

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

