require 'json'
require 'net/http'
require 'rspec'

# pull scenario.cache file from Balanced Docs
uri = URI.parse('https://raw.github.com/rloomba/balance-ruby-client/master/scenario.cache')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
data_file =  http.get(uri.request_uri).body

parsed_data = JSON.parse(data_file)

# list all directories in scenarios directory

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

describe "each scenario should execute" do
  subdir_list.each do |scenario|
    response = nil
    next unless File.exist?("./#{scenario}/executable.rb")
    next if scenario == "event_list" # bug with event_list, hangs
    # and then times out
    file = File.read("./#{scenario}/executable.rb")
    begin
      response = eval(file) # evaluate file to make sure it's a valid Ruby file
    rescue
      puts "#{scenario}'s executable raised an error"
    end
    it "#{scenario}" do
      response.should_not be_nil
    end
  end
end
