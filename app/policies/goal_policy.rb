class GoalPolicy < ActivityPolicy
  def update?
    true
  end

  def permitted_attributes
    [:title, :description, :resources]
  end
end
