module BEPStore
  module Goals
    # Goals engine
    class Engine < ::Rails::Engine
      isolate_namespace BEPStore::Goals
    end
  end
end
