require 'spec_helper'

SCENARIOS_TO_SKIP = ['account_add_card', 'account_create_buyer', 'account_create_merchant',
'bank_account_delete', 'bank_account_verification_create', 'card_update',
 'credit_create_existing_bank_account', 'debit_refund','hold_capture','refund_create',
 'event_list']

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
