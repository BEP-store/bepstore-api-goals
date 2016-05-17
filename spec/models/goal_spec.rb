require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { FactoryGirl.create(:goal) }

  subject { goal }

  it { should validate_presence_of(:title) }

  it_behaves_like 'Activity'

  describe '#engine' do
    it 'returns "goals"' do
      expect(goal.engine).to eq('goals')
    end
  end
end
