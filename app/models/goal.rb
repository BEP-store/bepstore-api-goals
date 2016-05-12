class Goal < Activity
  field :title, type: String
  field :description, type: String
  field :url, type: String

  alias_attribute :name, :title

  validates :title, presence: true
  validates :url, presence: true

  # :nocov:
  rails_admin do
    exclude_fields :_id, :updated_at, :deleted_at, :engine
    list do
      exclude_fields :sharing_level
    end
  end
  # :nocov:

  def self.engine
    'goals'
  end
end
