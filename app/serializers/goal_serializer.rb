# GoalSerializer
class GoalSerializer < ActivitySerializer
  attributes :id, :title, :description, :status, :update
  has_one :product_owner, polymorphic: true, serializer: UserSerializer
  has_one :head_design, polymorphic: true
  has_one :head_frontend, polymorphic: true
  has_one :head_backend, polymorphic: true
  has_many :contributors, polymorphic: true

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
