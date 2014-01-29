module Balanced

  class Transfer
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:transfers]

  end

end
