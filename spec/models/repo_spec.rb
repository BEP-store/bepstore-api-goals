require 'rails_helper'

RSpec.describe Repo, type: :model do
  let(:repo) { FactoryGirl.create(:repo) }

  subject { repo }

  it { should validate_presence_of(:route) }
  it { should respond_to(:goal) }

  describe '#id' do
    it 'returns the route as an id' do
      expect(repo.id).to eq(repo.route)
    end
  end
end
