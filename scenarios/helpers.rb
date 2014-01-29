# stabby lambdas "= ->"" is same as lambda { |params ... }
params_to_hash = lambda { |params|
  "".tap do |s|
    params.each_with_index do |(k, v), i|
      if v.is_a? Hash
        s << ":#{k} => {\n"
        s << "#{params_to_hash.call(v)}".indent(2)
        s << "\n}"
      else
        if v.is_a? String
          s << ":#{k} => '#{v}'"
        else
          s << ":#{k} => #{v}"
        end
      end
      if i != params.length - 1
        s << ",\n"
      end
    end
  end
}

params_to_hash_for_args = lambda { |payload|
  "".tap do |s|
    payload.each_with_index do |(k, v), i|
      s << "'#{k.to_sym}' => '#{v}'".indent(2)
      if i != payload.length - 1
        s << ",\n"
      end
    end
  end
}


params_to_key_word_arguments = lambda { |params|
  "".tap do |s|
    params.each_with_index do |(k, v), i|
      if v.is_a? Hash
        s << "#{k} = {\n"
        s << "#{params_to_key_word_arguments.call(v)}".indent(2)
        s << "\n}"
      else
        if v.is_a? String
          s << "#{k} = '#{v}'"
        else
          s << "#{k} = #{v}"
        end
      end
      if i != params.length - 1
        s << ",\n"
      end
    end
  end
}

@helpers = {:params_to_hash => params_to_hash,
            :params_to_hash_for_args => params_to_hash_for_args,
            :params_to_key_word_arguments => params_to_key_word_arguments}

String.class_eval do
  def indent(count, char = ' ')
    gsub(/([^\n]*)(\n|$)/) do |match|
      last_iteration = ($1 == "" && $2 == "")
      line = ""
      line << (char * count) unless last_iteration
      line << $1
      line << $2
      line
    end
  end
end
