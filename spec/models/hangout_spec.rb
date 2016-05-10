require 'rails_helper'

RSpec.describe Hangout, type: :model do
  let(:hangout) { FactoryGirl.create(:hangout) }

  subject { hangout }

  it { should validate_presence_of(:parents) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }

  it_behaves_like 'Activity'
end
