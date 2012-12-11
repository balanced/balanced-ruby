module Balanced

  # Your ApiKey is used to authenticate when performing operations on the
  # Balanced API.
  #
  # *NOTE:* Never give out or expose your ApiKey. You may POST to this
  # endpoint to create new ApiKeys and then DELETE any old keys.
  class ApiKey
    include Balanced::Resource

    def save
      Balanced.configure nil
      super
    end

  end

end
