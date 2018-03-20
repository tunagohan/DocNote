require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module App

  class Application < Rails::Application

    config.load_defaults 5.1

    config.action_controller.include_all_helpers = false

    config.time_zone = 'Asia/Tokyo'

    config.app_generators.scaffold_controller = :scaffold_controller

    config.web_console.development_only = false

    I18n.enforce_available_locales = false
    config.i18n.default_locale = :en

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end

  end

end
