require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { FactoryGirl.create(:goal) }

  subject { goal }

  it { should validate_presence_of(:parents) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }

  it_behaves_like 'Activity'
end
