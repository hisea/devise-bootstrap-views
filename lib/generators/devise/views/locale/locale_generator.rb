require 'net/http'

module Devise
  module Views
    class LocaleGenerator < Rails::Generators::NamedBase
      def download_locale
        repo_url = 'https://raw.githubusercontent.com/tigrish/devise-i18n/master/rails/locales/'
        download_url = URI.parse("#{repo_url}#{name}.yml")
        downloaded_file = Net::HTTP.get(download_url).force_encoding('UTF-8')
        File.write(
          Rails.root.join('config', 'locales', "devise.views.#{name}.yml"), downloaded_file
        )
      end
    end
  end
end
