require 'spec_helper'
require 'rake'

# load rakefile and run task to create executable files
load File.open('Rakefile')
Rake::Task['render_executables'].invoke

SCENARIOS_TO_SKIP = ['account_add_card', 'account_create_buyer', 'account_create_merchant',
'bank_account_delete', 'bank_account_verification_create', 'card_update',
 'credit_create_existing_bank_account', 'debit_refund','hold_capture','refund_create',
 'event_list', 'customer_create_hold', 'debit_create', 'bank_account_find_and_create', 'customer_add_card',
'customer_create_debit', 'customer_add_bank_account', 'bank_account_find_and_delete', 'bank_account_find_and_credit',
'account_capture_hold', 'bank_account_invalid_routing_number', 'account_create_debit']

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
