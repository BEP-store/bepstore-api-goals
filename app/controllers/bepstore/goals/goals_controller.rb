module BEPStore
  module Goals
    class GoalsController < V1::ActivitiesController
      # def create_params
      #   binding.pry
      #   params.require(:goal)
      #   .except!(:engine, :created_at, :updated_at, :type, :user_id, :parent_ids, :child_ids)
      #   .permit(:title, :description, :status, :update_text, :product_owner_id, :head_design_id, :head_frontend_id, :head_backend_id, {:contributor_ids => []})
      # end
      #
      # def update_params
      #   binding.pry
      #   params.require(:goal)
      #   .except!(:engine, :created_at, :updated_at, :type, :user_id, :parent_ids, :child_ids)
      #   .permit(:title, :description, :status, :update_text, :product_owner_id, :head_design_id, :head_frontend_id, :head_backend_id, {:contributor_ids => []})
      # end
    end
  end
end
