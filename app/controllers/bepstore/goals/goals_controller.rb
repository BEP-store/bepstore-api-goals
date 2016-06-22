module BEPStore
  module Goals
    class GoalsController < V1::ActivitiesController

      def included_relationships
        super + ['product_owner', 'head_design', 'head_frontend', 'head_backend']
      end

      def update_params
        params = super

        # Make actual resources from hash
        if params['repo_ids']
          res = params['repo_ids'].map do |hash|
            Repo.new route:hash
          end
          binding.pry
          params.merge(repos: res)
        end
      end
    end
  end
end
