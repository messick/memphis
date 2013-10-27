module Ptolemy
  class Client
    class PtolemyConnectionError < Exception; end

    FOREIGN_PROVIDERS = {
      '7digital-US' => '7digital',
      'deezer' => 'deezer',
      'facebook' => 'facebook',
      'fma' => 'free_music_rchive',
      'jambase' => 'jambase',
      'musicbrainz' => 'musicbrainz',
      'playme' => 'playme',
      'rhapsody-US' => 'rhapsody',
      'rdio-US' => 'rdio',
      'seatgeek' => 'seat_geek',
      'songkick' => 'songkick',
      'spotify-WW' => 'spotify',
      'songmeanings' => 'song_meanings',
      'twitter' => 'twitter',
      'whosampled' => 'who_sampled'
    }

    BASE_URI = 'http://developer.echonest.com/api/v4/artist/profile?'

    def initialize api_key
      @api_key = api_key
    end

    def search id
      @id = id
      results = get_foreign_id_hash

      results
    end

    private

    def get_foreign_id_hash
      uri = BASE_URI
      uri += "api_key=#{@api_key}"
      uri += "&id=#{@id}"
      uri += provider_params

      parse_response HTTParty.get(uri)
    end

    def provider_params
      "&bucket=id:" + FOREIGN_PROVIDERS.keys.join('&bucket=id:')
    end

    def parse_response http_response
      foreign_ids = {}


      # Also put the echonest artist name in there, even though
      # it's not technically a "foreign" id
      foreign_ids["echonest"] = http_response["response"]["artist"]["name"]

      http_response['response']['artist']['foreign_ids'].each do |hash|

        id_parts = hash["foreign_id"].split(':')

        provider = FOREIGN_PROVIDERS[id_parts[0]]

        foreign_id = id_parts[2]

        foreign_ids[provider] = foreign_id
      end

      foreign_ids
    end

  end

end