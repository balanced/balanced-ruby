include T('default/layout/html')
include YARD::Parser::Ruby::Legacy

def init
  override_serializer
  @object = YARD::Registry.root
  @files.shift
  @objects.delete(YARD::Registry.root)
  @objects.unshift(YARD::Registry.root)
  sections :layout, [:all_objects]
end

def all_objects
  @objects.map { |obj| obj.format(options) }.join("\n")
end

private

def override_serializer
  return if @serializer.nil?
  class << @serializer
    def serialize(object, data)
      return unless object == 'index.html'
      super
    end

    def serialized_path(object)
      return object if object.is_a?(String)
      return 'index.html'
    end
  end
end
