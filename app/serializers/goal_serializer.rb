# GoalSerializer
class GoalSerializer < ActivitySerializer
  self.perform_caching = false

  attributes :id, :title, :description, :status, :update, :product_owner, :head_design, :head_frontend, :head_backend

  def initialize(object, options)
    super(object, options)

    # Embed resource ids under pluralized resource type key
    object.resources.group_by(&:type).map do |key, resources|
      attr = key.pluralize

      # This defines 'scopes' for each resource type
      object.class.class_eval do
        define_method(attr) { resources }
      end

      # This tells the serializer to include the 'scope' in serialization
      self.class.class_eval do
        has_many(attr.to_sym)
      end
    end
  end

end
