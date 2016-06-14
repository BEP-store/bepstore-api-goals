class GoalPolicy < ActivityPolicy
  def update?
    true
  end

  def permitted_attributes_for_create
    super + [:title, :description, :relationships, :status, :update_text, :product_owner, :head_design, :head_frontend, :head_backend, :contributors, :resources, :type]
  end

  def permitted_attributes
    super + [:data, :attributes, :goal, :user_id, :relationships, :status, :update_text, :product_owner, :head_design, :head_frontend, :head_backend, :contributors, :resources, :type, :title, :description, :status, :update_text, :product_owner_id, :head_design_id, :head_frontend_id, :head_backend_id, contributor_ids: [], resources: [:id, :route, :type]]
  end
end
