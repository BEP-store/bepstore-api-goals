# GoalSerializer
class GoalSerializer < ActivitySerializer
  attributes :id, :title, :description, :status, :update, :product_owner, :head_design, :head_frontend, :head_backend
end
