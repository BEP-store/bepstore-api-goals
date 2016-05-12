require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  let!(:params) { { title: "Testing title",url: "https://plus.google.com/_/fake-hangouts-id" } }

  it_behaves_like 'ActivitiesController'

end
