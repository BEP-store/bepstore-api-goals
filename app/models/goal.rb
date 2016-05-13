class Goal < Activity
  field :title, type: String
  field :description, type: String
  field :url, type: String

  alias_attribute :name, :title

  validates :title, presence: true
  validates :url, presence: true

  def self.engine
    'goals'
  end
end
