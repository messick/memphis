module Memphis
  module Configuration
    DEFAULT_API_KEY = nil
    BASE_URI = 'http://developer.echonest.com/api/v4/'

    attr_accessor :api_key

    def self.extended(base)
      base.reset
    end

    def reset
      self.api_key = DEFAULT_API_KEY
    end

    def self.base_uri
      BASE_URI
    end

    def configure
      yield self
    end
  end
end
