# stabby lambdas "= ->"" is same as lambda { |params ... }
params_to_hash = ->(params) do
  "".tap do |s|
    params.each do |k, v|
      s << ":#{k} => '#{v}',"
    end
  end
end

params_to_hash_for_args = ->(payload) do
  payload.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
end

@helpers = {:params_to_hash => params_to_hash,
            :params_to_hash_for_args => params_to_hash_for_args}
