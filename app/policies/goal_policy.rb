class GoalPolicy < ActivityPolicy
  def permitted_attributes
    [:title, :url]
  end
end
