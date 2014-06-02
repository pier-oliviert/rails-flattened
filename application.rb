require 'rails/all'

module Minimalist
  class Application < Rails::Application
    paths.add 'app/views', with: 'views'
    paths.add 'app/assets', with: 'assets'
    paths.add 'app/controllers', with: 'controllers', eager_load: true
    paths.add 'app/models', with: 'models', eager_load: true
    paths.add 'app/helpers', with: 'helpers', eager_load: true

    paths.add 'config/environment', with: 'environment.rb'
    paths.add "config/environments", with: "environments/#{Rails.env}.rb"
    paths.add "config/routes.rb", with: "routes.rb"
    paths.add "config/locales", with: "locales", glob: "**/*.{rb,yml}"
    paths.add "config/secrets", with: "secrets.yml"
    paths.add 'config/database', with: 'secrets.yml'

    paths.add 'log', with: "tmp/logs/#{Rails.env}.log"

  end
end
