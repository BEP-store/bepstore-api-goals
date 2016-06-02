require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  include_context 'authentication'
  include_context 'group'

  let!(:parent) { FactoryGirl.create(:activity, groups: [group]) }

  let!(:activity) { FactoryGirl.create(:goal, user: user, groups: [group]) }
  let!(:activity2) { FactoryGirl.create(:goal, groups: [group]) }

  let!(:goal_with_resources) { FactoryGirl.create(:goal_with_resources) }

  let!(:params) do
    {
      title: 'Testing title'
    }
  end

  it_behaves_like 'ActivitiesController'

  describe 'GET #find' do
    let(:action) do
      proc do
        get :find, ids: [goal_with_resources.id]
      end
    end

    describe 'with 5 resources' do
        before { action.call }

        it { expect(JSON.parse(response.body)['goals'][0]['github_ids'].length).to eq(5) }
    end
  end
end
