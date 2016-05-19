# Activity goal
class Goal < Activity
  field :id, type: Integer
  field :title, type: String
  field :description, type: String
  field :status, type: String

  # Should be moved out of here
  field :update, type: Text
  
  # Core team
  field :product_owner, type: Integer
  field :head_design, type: Integer
  field :head_frontend, type: Integer
  field :head_backend, type: Integer

  alias_attribute :name, :title

  validates :title, presence: true
  validates :parents, presence: true

  def self.engine
    'goals'
  end
end
