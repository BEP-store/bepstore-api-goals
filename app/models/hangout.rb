class Hangout < Activity
  field :title, type: String
  field :description, type: String
  field :url, type: String

  alias_attribute :name, :title

  validates :title, presence: true
  validates :url, presence: true
  validates :parents, presence: true

  # :nocov:
  rails_admin do
    exclude_fields :_id, :updated_at, :deleted_at, :engine, :tags, :notifications, :children, :bundles, :points, :child_points
    list do
      exclude_fields :parents, :sharing_level
    end
  end
  # :nocov:

  def self.engine
    'google'
  end
end
