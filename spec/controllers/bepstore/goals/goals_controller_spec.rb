require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  include_context 'authentication'
  include_context 'group'

  let!(:parent) { FactoryGirl.create(:activity, groups: [group]) }

  let!(:activity) { FactoryGirl.create(:goal, user: user, groups: [group]) }
  let!(:activity2) { FactoryGirl.create(:goal, groups: [group]) }

  let!(:goal_with_repos) { FactoryGirl.create(:goal_with_repos) }

  let!(:params) do
    {
      title: 'Testing title'
    }
  end

  it_behaves_like 'ActivitiesController'

  describe 'GET #filter' do
    let(:action) do
      proc do
        get :filter, params: { filter: { id: goal_with_repos.id } }
      end
    end

    describe 'with 5 repos' do
      before { action.call }
      it { expect(JSON.parse(response.body, symbolize_names: true)[:data][0][:relationships][:repos][:data].length).to eq(5) }
    end
  end
end
