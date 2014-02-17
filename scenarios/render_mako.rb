require 'rubygems'
require 'erb'
require 'json'
#require 'ruby-debug'
require './scenarios/helpers'
require './lib/balanced'
require 'pp'
require 'json'

class BalancedResourceObject
  include Balanced::Resource
  include Balanced::Resource::ClassMethods
end

def construct_resource(key, payload, links, meta)
  cls = Balanced.from_hypermedia_registry(key)
  instance = cls.new payload
  instance.hydrate(links, meta)
  instance
end

def construct_from_response(payload)
  payload = Balanced::Utils.indifferent_read_access payload
  
  links = payload.delete('links') || {}
  meta = payload.delete('meta') || {}

  payload.each do |key, value|
    if key != 'errors'
      if meta['first'] != nil #value.length > 1
        instances = Array.new
        value.first(2).each do |v|
          instances << construct_resource(key, v, links, meta)
        end
        return instances
      else
        return construct_resource(key, value.first, links, meta)
      end
    end
  end
end

def tidy_response(response)
  return if ! response
  return response.gsub(/@\S(.*?)\Sbalanced-ruby/, '')
end

parsed_data = JSON.parse(File.read('scenario.cache'))

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

api_key = parsed_data["api_key"]
# boiler plate configuration code used in all scenarios
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

params_to_hash = @helpers[:params_to_hash]
params_to_hash_for_args = @helpers[:params_to_hash_for_args]
params_to_key_word_arguments = @helpers[:params_to_key_word_arguments]
subdir_list.each do |scenario|
  begin
    definition = File.read("./#{scenario}/definition.rb")
    template = File.read("./#{scenario}/request.rb")
    # generate new erb template file from each request.rb file
    erb = ERB.new(template)
    request = parsed_data[scenario]['request']
    response = nil
    if parsed_data[scenario]['response'] != nil
      parsed_response = JSON.parse(parsed_data[scenario]['response'])
      response = PP.pp(construct_from_response(parsed_response), "")
    end
    payload = request['payload']
    # render erb file passing in all local variables
    executable = erb.result(binding)
    File.open("./#{scenario}/ruby.mako", "w") do |f|
      f.write("% if mode == 'definition':")
      f.write("\n")
      f.write(definition)
      f.write("\n")
      f.write("% elif mode == 'request':")
      f.write("\n")
      f.write(executable)
      f.write("\n")
      f.write("% elif mode == 'response':")
      f.write("\n")
      f.write(tidy_response(response))
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
