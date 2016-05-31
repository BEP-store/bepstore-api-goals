# Activity goal
class Goal < Activity
  field :title, type: String
  field :description, type: String
  field :status, type: String

  # Should be moved out of here
  field :updateText, type: String

  # Core team
  field :product_owner_id, type: User
  field :head_design_id, type: User
  field :head_frontend_id, type: User
  field :head_backend_id, type: User

  has_and_belongs_to_many :contributors, class_name: 'User'

  alias_attribute :name, :title

  #validates :parents, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true

  has_many :resources

  def self.engine
    'goals'
  end
end
