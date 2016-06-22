FactoryGirl.define do
  factory :repo do
    sequence(:route) { 'https://github.com/feedbackfruits/bepstore-api/' }
    goal
  end
end
