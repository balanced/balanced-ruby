require 'rubygems'
require 'erb'
require 'json'
#require 'ruby-debug'
require './scenarios/helpers'

parsed_data = JSON.parse(File.read('scenario.cache'))

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

api_key = parsed_data["api_key"]
# boiler plate configuration code used in all scenarios
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

params_to_hash = @helpers[:params_to_hash]
params_to_hash_for_args = @helpers[:params_to_hash_for_args]
subdir_list.each do |scenario|
  begin
    definition = File.read("./#{scenario}/definition.rb")
    template = File.read("./#{scenario}/request.rb")
    # generate new erb template file from each request.rb file
    erb = ERB.new(template)
    request = parsed_data[scenario]['request']
    payload = request['payload']
    # render erb file passing in all local variables
    executable = erb.result(binding)
    File.open("./#{scenario}/ruby.mako", "w") do |f|
      f.write("% if mode == 'definition':")
      f.write("\n")
      f.write(definition)
      f.write("\n")
      f.write("% else:")
      f.write("\n")
      f.write(executable)
      f.write("\n")
      f.write("% endif")
      f.write("\n")
    end
  rescue Exception => e
    puts e
    puts e.backtrace
    puts "Error rendering #{scenario}'s mako"
  end
end
