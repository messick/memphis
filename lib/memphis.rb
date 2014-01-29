require_relative 'memphis/configuration'
require_relative 'memphis/client'
require_relative 'memphis/result'
require_relative 'memphis/version'

require 'httparty'
require 'multi_json'

module Memphis
  BASE_URI = 'ss'
  extend Configuration
end
