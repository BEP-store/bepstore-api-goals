require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  include_context 'authentication'
  include_context 'group'

  let!(:parent) { FactoryGirl.create(:activity, groups: [group]) }

  let!(:activity) { FactoryGirl.create(:goal, user: user, groups: [group]) }
  let!(:activity2) { FactoryGirl.create(:goal, groups: [group]) }

  let!(:params) do
    {
      title: 'Testing title'
    }
  end

  it_behaves_like 'ActivitiesController'
end
