require 'rails'
module DeviseBootstrapViews
  class Engine < ::Rails::Engine
  end

  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'rails-i18n-views' do |app|
      DeviseBootstrapViews::Railtie.instance_eval do
        pattern = pattern_from app.config.i18n.available_locales

        files = Dir[File.join(File.dirname(__FILE__), '../locales', "#{pattern}.yml")]
        I18n.load_path.concat(files)
      end
    end

    protected

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end
  end
end
