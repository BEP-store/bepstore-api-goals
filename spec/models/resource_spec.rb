require 'rails_helper'

RSpec.describe Resource, type: :model do
  let(:resource) { FactoryGirl.create(:resource) }

  subject { resource }

  it { should validate_presence_of(:route) }
  it { should validate_presence_of(:type) }
  it { should respond_to(:goal) }

  describe '#id' do
    it 'returns the route as an id' do
      expect(resource.id).to eq(resource.route)
    end
  end
end
