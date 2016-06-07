class GoalPolicy < ActivityPolicy
  def update?
    true
  end

  def permitted_attributes
    [:title, :description, :status, :updateText, :product_owner_id, :head_design_id, :head_frontend_id, :head_backend_id, contributor_ids: [], resources: [:id, :route, :type]]
  end
end
