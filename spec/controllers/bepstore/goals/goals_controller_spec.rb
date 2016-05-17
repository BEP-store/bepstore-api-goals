require 'rails_helper'

RSpec.describe BEPStore::Goals::GoalsController, type: :controller do
  routes { BEPStore::Goals::Engine.routes }

  let!(:params) do
    {
      title: 'Testing title'
    }
  end

  it_behaves_like 'ActivitiesController'
end
