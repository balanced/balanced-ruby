module Balanced

  # An Event is a snapshot of another resource at a point in time when
  # something significant occurred. Events are created when resources are
  # created, updated, deleted or otherwise change state such as a Credit being
  # marked as failed.
  #
  class Event
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:events]
  end

  # Represents a single event being sent to a callback.
  #
  class EventCallback
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:event_callbacks]
  end

  # Represents a single log of an event sent to a callback.
  #
  class Log
    include Balanced::Resource
    include Balanced::HypermediaRegistry

    define_hypermedia_types [:logs]
  end

end
