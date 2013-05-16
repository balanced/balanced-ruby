require 'erb'
require 'json'
require 'net/https'

parsed_data = JSON.parse(File.read('./scenario.cache'))

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

api_key = parsed_data["api_key"]
# boiler plate configuration code used in all scenarios
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

subdir_list.each do |scenario|
  begin
    template = File.read("./#{scenario}/request.rb")
    # generate new erb template file from each request.rb file
    erb = ERB.new(template)
    request = parsed_data[scenario]['request']
    payload = request['payload']
    # render erb file passing in all local variables
    executable = erb.result(binding)
    File.open("./#{scenario}/executable.rb", "w") do |f|
      f.write(executable)
    end
  rescue Exception => e
    puts "Error rendering #{scenario}'s template"
  end
end
