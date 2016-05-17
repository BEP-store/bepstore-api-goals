# Activity goal
class Goal < Activity
  field :title, type: String
  field :description, type: String

  alias_attribute :name, :title

  validates :title, presence: true

  def self.engine
    'goals'
  end
end
