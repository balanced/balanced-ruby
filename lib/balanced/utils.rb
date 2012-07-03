module Balanced
  module Utils
    def camelize underscored_word
      underscored_word.to_s.gsub(/(?:^|_)(.)/) { $1.upcase }
    end

    def classify table_name
      camelize singularize(table_name.to_s.sub(/.*\./, ''))
    end

    def demodulize class_name_in_module
      class_name_in_module.to_s.sub(/^.*::/, '')
    end

    def pluralize word
      word.to_s.sub(/([^s])$/, '\1s')
    end

    def singularize word
      word.to_s.sub(/s$/, '').sub(/ie$/, 'y')
    end

    def underscore camel_cased_word
      word = camel_cased_word.to_s.dup
      word.gsub!(/::/, '/')
      word.gsub!(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
      word.gsub!(/([a-z\d])([A-Z])/, '\1_\2')
      word.tr! "-", "_"
      word.downcase!
      word
    end

    def hash_with_indifferent_read_access base = {}
      indifferent = Hash.new do |hash, key|
        hash[key.to_s] if key.is_a? Symbol
      end
      base.each_pair do |key, value|
        if value.is_a? Hash
          value = hash_with_indifferent_read_access value
        elsif value.respond_to? :each
          value.map! do |v|
            if v.is_a? Hash
               v = hash_with_indifferent_read_access v
            end
            v
          end
        end
        indifferent[key.to_s] = value
      end
      indifferent
    end

    def stringify_keys! hash
      hash.keys.each do |key|
        stringify_keys! hash[key] if hash[key].is_a? Hash
        hash[key.to_s] = hash.delete key if key.is_a? Symbol
      end
    end

    extend self
  end
end