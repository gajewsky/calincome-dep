require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module Calincome
  class Application < Rails::Application
    config.i18n.load_path += Dir[config.root.join('frontend/components/**/*.yml')]
    config.autoload_paths << config.root.join('frontend/components')
    config.load_defaults 5.2
    config.komponent.stylesheet_engine = :scss

    config.generators do |generate|
      generate.system_tests = nil
      generate.komponent stimulus: true
      generate.template_engine = :slim
      generate.helper false
      generate.test false
      generate.assets false
      generate.view_specs false
    end
  end
end
