module Balanced

  module Utils

    def callable(callable_or_not)
      callable_or_not.respond_to?(:call) ? callable_or_not : lambda { callable_or_not }
    end

    def camelize(underscored_word)
      underscored_word.to_s.gsub(/(?:^|_)(.)/) { $1.upcase }
    end

    def classify(table_name)
      camelize singularize(table_name.to_s.sub(/.*\./, ''))
    end

    def demodulize(class_name_in_module)
      class_name_in_module.to_s.sub(/^.*::/, '')
    end

    def pluralize(word)
      word.to_s.sub(/([^s])$/, '\1s')
    end

    def singularize(word)
      word.to_s.sub(/s$/, '').sub(/ie$/, 'y')
    end

    def underscore(camel_cased_word)
      word = camel_cased_word.to_s.dup
      word.gsub!(/::/, '/')
      word.gsub!(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
      word.gsub!(/([a-z\d])([A-Z])/, '\1_\2')
      word.tr! '-', '_'
      word.downcase!
      word
    end

    def extract_href_from_object(object)
      object.respond_to?(:href) ? object.href : object
    end

    def indifferent_read_access(base = {})
      indifferent = Hash.new do |hash, key|
        hash[key.to_s] if key.is_a? Symbol
      end
      base.each_pair do |key, value|
        if value.is_a? Hash
          value = indifferent_read_access value
        elsif value.respond_to? :each
          if value.respond_to? :map!
            value.map! do |v|
              if v.is_a? Hash
                v = indifferent_read_access v
              end
              v
            end
          else
            value.map do |v|
              if v.is_a? Hash
                v = indifferent_read_access v
              end
              v
            end
          end
        end
        indifferent[key.to_s] = value
      end
      indifferent
    end

    def stringify_keys!(hash)
      hash.keys.each do |key|
        stringify_keys! hash[key] if hash[key].is_a? Hash
        hash[key.to_s] = hash.delete key if key.is_a? Symbol
      end
    end

    # Validate all keys in a hash match *valid keys, raising ArgumentError on a mismatch.
    # Note that keys are NOT treated indifferently, meaning if you use strings for keys but assert symbols
    # as keys, this will fail.
    #
    # ==== Examples
    #   { :name => "Rob", :years => "28" }.assert_valid_keys(:name, :age) # => raises "ArgumentError: Unknown key(s): years"
    #   { :name => "Rob", :age => "28" }.assert_valid_keys("name", "age") # => raises "ArgumentError: Unknown key(s): name, age"
    #   { :name => "Rob", :age => "28" }.assert_valid_keys(:name, :age) # => passes, raises nothing
    def assert_valid_keys(hash, *valid_keys)
      unknown_keys = hash.keys - [valid_keys].flatten
      raise(ArgumentError, "Unknown key(s): #{unknown_keys.join(', ')}") unless unknown_keys.empty?
    end

    # http://pablomanrubia.com/2011/03/extending-ruby-to-validate-required-keys-in-a-hash-table/
    #def assert_required_keys(hash, params)
    #  params[:required] ||= []
    #  params[:optional] ||= []
    #  assert_valid_keys(hash, params[:required] + params[:optional])
    #  pending_keys = params[:required] - hash.keys
    #  raise(ArgumentError, "Required key(s) not present: #{pending_keys.join(', ')}") unless pending_keys.empty?
    #end

    def assert_required_keys(hash, params)
      params[:required] ||= []
      pending_keys = params[:required] - hash.keys
      raise(ArgumentError, "Required key(s) not present: #{pending_keys.join(', ')}") unless pending_keys.empty?
    end
    extend self
  end
end