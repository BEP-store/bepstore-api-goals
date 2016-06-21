# GoalSerializer
class GoalSerializer < ActivitySerializer
  cache key: 'resources', expires_in: 1.minutes

  attributes :id, :title, :description, :status, :update_text
  has_one :product_owner
  has_one :head_design
  has_one :head_frontend
  has_one :head_backend
  has_many :contributors

  has_many :resources do
    object.resources.map do |resource|
      { type: 'resources', id: resource.route } if resource.route.present?
    end
  end

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
