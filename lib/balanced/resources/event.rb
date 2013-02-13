module Balanced

  # An Event is a snapshot of another resource at a point in time when
  # something significant occurred. Events are created when resources are
  # created, updated, deleted or otherwise change state such as a Credit being
  # marked as failed.
  #
  class Event
    include Balanced::Resource

  end

  # Represents a single event being sent to a callback.
  #
  class EventCallback
    include Balanced::Resource

  end

end
