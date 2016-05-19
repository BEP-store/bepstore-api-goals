FactoryGirl.define do
  factory :goal do
    user
    sequence(:title) { |n| "Text #{n}" }
    sequence(:description) { |n| "Desc #{n}" }
    sequence(:status) { |n| "Status #{n}" }

    after(:build) do |activity|
      activity.parents << create(:activity)
      activity.groups.push(activity.parents.map(&:groups).flatten)
      unless activity.user.enrolled?(activity.groups.first)
        activity.user.enroll!(activity.groups.first, create(:role))
      end
    end
  end
end
