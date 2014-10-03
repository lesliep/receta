require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Receta
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components', 'bootstrap-sass-official', 'assets', 'fonts')

    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff)$)
    config.assets.initialize_on_precompile = false  
  end
end
