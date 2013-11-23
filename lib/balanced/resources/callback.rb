module Balanced

  # A Callback is a publicly accessible location that can receive POSTed JSON
  # data whenever an Event is generated.
  #
  class Callback
    include Balanced::Resource
    include Balanced::HypermediaRegistry
    define_hypermedia_types [:callbacks]

  end

end
