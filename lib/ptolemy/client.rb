module Ptolemy
  class Client
    class PtolemyConnectionError < Exception; end

    FOREIGN_PROVIDERS = {
      'id:7digital-US' => '7digital',
      'id:facebook' => 'facebook',
      'id:rdio-US' => 'rdio',
      'id:spotify-WW' => 'spotify',
      'id:songkick' => 'songkick',
      'id:twitter' => 'twitter'
    }

    def initialize api_key
      @api_key = api_key
      @base_uri = 'http://developer.echonest.com/api/v4/artist/profile?'
    end

    def search id
      @id = id
      results = get_foreign_id_hash

      results
    end

    private

    def get_foreign_id_hash
      uri = @base_uri
      uri += "api_key=#{@api_key}"
      uri += "&id=#{@id}"
      uri += provider_params

      parse_response HTTParty.get(uri)
    end

    def provider_params
      "&bucket=" + FOREIGN_PROVIDERS.keys.join('&bucket=')
    end

    def parse_response http_response
      foreign_ids = {}

      # Also put the echonest artist name in there, even though
      # it's not technically a "foreign" id
      foreign_ids[:echonest] = http_response["response"]["artist"]["name"]

      http_response['response']['artist']['foreign_ids'].each do |hash|

        id_parts = hash["foreign_id"].split(':')

        provider = FOREIGN_PROVIDERS["id:#{id_parts[0]}"].to_sym
        foreign_id = id_parts[2]

        foreign_ids[provider] = foreign_id
      end

      foreign_ids
    end

  end

end
