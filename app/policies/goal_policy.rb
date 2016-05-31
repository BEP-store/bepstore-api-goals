class GoalPolicy < ActivityPolicy
  def permitted_attributes
    [:title, :description, :resources]
  end
end
