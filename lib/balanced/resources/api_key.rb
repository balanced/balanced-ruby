module Balanced

  # Your ApiKey is used to authenticate when performing operations on the
  # Balanced API.
  #
  # *NOTE:* Never give out or expose your ApiKey. You may POST to this
  # endpoint to create new ApiKeys and then DELETE any old keys.
  class ApiKey

    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:api_keys]

    def save
      Balanced.configure nil
      super
    end

  end

end
