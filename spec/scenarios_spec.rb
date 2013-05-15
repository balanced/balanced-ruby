require 'spec_helper'

# pull scenario.cache file from Balanced Docs
uri = URI.parse('https://raw.github.com/rloomba/balance-ruby-client/master/scenario.cache')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
data_file =  http.get(uri.request_uri).body

parsed_data = JSON.parse(data_file)

# list all directories in scenarios directory

subdir_list = Dir["./scenarios/*"].reject { |o| not File.directory?(o) }
puts subdir_list

# VCR.configure { |c| c.allow_http_connections_when_no_cassette = true }

describe "Scenarios", :vcr do
  subdir_list.each do |scenario|
    next unless File.exist?("#{scenario}/executable.rb")
    next if scenario == "event_list" # bug with event_list, hangs
    # and then times out
    response = nil
    describe "#{scenario.split("/").last}", :vcr do
      before do
        file = File.read("#{scenario}/executable.rb")
        begin
          response = eval(file) # evaluate file to make sure it's a valid Ruby file
        rescue
          puts "#{scenario.split("/").last}'s executable raised an error"
        end
      end
      it "#{scenario.split("/").last}" do
        response.should_not be_nil
      end
    end
  end
end
