FactoryGirl.define do
  factory :resource do
    sequence(:route) { 'https://github.com/feedbackfruits/bepstore-api/' }
    sequence(:type) { 'github' }
    goal
  end
end
