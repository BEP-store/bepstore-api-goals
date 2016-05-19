require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { FactoryGirl.create(:goal) }

  subject { goal }

  it { should validate_presence_of(:parents) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:status) }

  describe '#engine' do
    it 'returns something' do
      expect(goal.engine).to eq('goals')
    end
  end

  it_behaves_like 'Activity'
end
