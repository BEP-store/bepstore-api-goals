module BEPStore
  module Goals
    class GoalsController < V1::ActivitiesController

      def included_relationships
        super + ['product_owner', 'head_design', 'head_frontend', 'head_backend']
      end

      def update_params
        params = super

        # Make actual resources from hash
        if params['resources']
          res = params['resources'].map do |hash|
            Resource.new hash
          end

          params.merge(resources: res)
        end
      end
    end
  end
end
