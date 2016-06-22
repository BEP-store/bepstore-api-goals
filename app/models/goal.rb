# Activity goal
class Goal < Activity
  field :title, type: String
  field :description, type: String
  field :status, type: String

  # Should be moved out of here to Update or something
  field :update_text, type: String

  # Core team
  belongs_to :product_owner, class_name: 'User'
  belongs_to :head_design, class_name: 'User'
  belongs_to :head_frontend, class_name: 'User'
  belongs_to :head_backend, class_name: 'User'

  has_and_belongs_to_many :contributors, class_name: 'User'

  has_many :repos

  alias_attribute :name, :title

  # validates :parents, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true

  def self.engine
    'goals'
  end
end
