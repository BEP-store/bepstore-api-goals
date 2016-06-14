require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { FactoryGirl.create(:goal) }
  let(:goal_with_resources) { FactoryGirl.create(:goal_with_resources) }

  subject { goal }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }

  describe '#engine' do
    it 'returns something' do
      expect(goal.engine).to eq('goals')
    end
  end

  it_behaves_like 'Activity'

  subject { goal_with_resources }

  it { should respond_to(:resources) }

  describe '#resource count' do
    it 'should have 5 resources' do
      expect(goal_with_resources.resources.length).to eq(5)
    end
  end
end
