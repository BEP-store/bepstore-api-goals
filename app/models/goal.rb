# Activity goal
class Goal < Activity
  field :title, type: String
  field :description, type: String
  field :status, type: String

  # Should be moved out of here
  field :updateText, type: String

  # Core team
  has_one :product_owner, class_name: 'User'
  has_one :head_design, class_name: 'User'
  has_one :head_frontend, class_name: 'User'
  has_one :head_backend, class_name: 'User'

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
