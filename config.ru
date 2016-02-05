# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)

# import settings into ENV
ENV.update(YAML.load_file('config/settings.yml')[ENV['RACK_ENV']])

run Rails.application
