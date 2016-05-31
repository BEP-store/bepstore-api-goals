class GoalPolicy < ActivityPolicy
  def update?
    true
  end

  def permitted_attributes
    [:title, :description, :resources, :status, :updateText, :product_owner_id, :head_design_id, :head_frontend_id, :head_backend_id, contributor_ids: []]
  end
end
