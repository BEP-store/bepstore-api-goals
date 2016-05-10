require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  include_context 'authentication'
  include_context 'group'

  let!(:parent) { FactoryGirl.create(:activity, groups: [group]) }

  let!(:activity) { FactoryGirl.create(:goal, user: user, groups: [group]) }
  let!(:activity2) { FactoryGirl.create(:goal, groups: [group]) }

  let!(:params) { { title: "Testing title",url: "https://plus.google.com/_/fake-hangouts-id", group_ids: [group.id], parent_ids: [parent.id] } }

  it_behaves_like 'ActivitiesController'

end
