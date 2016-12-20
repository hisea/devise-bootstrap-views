module Devise
  module Views
    class BootstrapHamlTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../app/views', __FILE__)
      def copy_views
         directory("haml", Rails.root.join("app", "views", "devise"))
      end
    end
  end
end
