require 'spec_helper'
require 'rake'

# load rakefile and run task to create executable files
load 'Rakefile'
Rake::Task['render_executables'].invoke

SCENARIOS_TO_SKIP = []

parsed_data = JSON.parse(File.read('./scenario.cache'))

# list all directories in scenarios directory

subdir_list = Dir["./scenarios/*"].reject { |o| not File.directory?(o) }
subdir_list.reject! { |item| SCENARIOS_TO_SKIP.include?(item.split("/").last) }

describe "Scenarios", :vcr do
  subdir_list.each do |scenario|
    next unless File.exist?("#{scenario}/executable.rb")
    response = nil
    describe "#{scenario.split("/").last}", :vcr do
      before do
        file = File.read("#{scenario}/executable.rb")
        begin
          # response = eval(file)
          Dir.chdir("#{scenario}")
          response = `ruby -c executable.rb`
          puts response
          Dir.chdir("../../")
        rescue
          puts "#{scenario.split("/").last}'s executable raised an error"
        end
      end
      it "#{scenario.split("/").last}" do
        response.should eq("Syntax OK\n")
      end
    end
  end
end
