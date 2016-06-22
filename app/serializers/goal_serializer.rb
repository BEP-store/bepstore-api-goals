# GoalSerializer
class GoalSerializer < ActivitySerializer
  attributes :id, :title, :description, :status, :update_text
  has_one :product_owner
  has_one :head_design
  has_one :head_frontend
  has_one :head_backend
  has_many :contributors

  has_many :repos
end
