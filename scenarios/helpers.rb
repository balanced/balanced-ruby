# stabby lambdas "= ->"" is same as lambda { |params ... }
params_to_hash = lambda { |params|
  "".tap do |s|
    params.each_with_index do |(k, v), i|
      s << ":#{k} => '#{v}'"
      if i != params.length - 1
        s << ",\n\t"
      end
    end
  end
}

params_to_hash_for_args = lambda { |payload|
  "".tap do |s|
    s << "{\n\t"
    payload.each_with_index do |(k, v), i|
      s << "'#{k.to_sym}' => '#{v}'"
      if i != payload.length - 1
        s << ",\n\t"
      end
    end
    s << "\n}"
  end
}

@helpers = {:params_to_hash => params_to_hash,
            :params_to_hash_for_args => params_to_hash_for_args}
