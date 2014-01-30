module Memphis
  class Artist < Client

    ARTIST_URI = File.join(::Memphis::Configuration.base_uri, '/artist/profile?')

    def initialize
      super
    end

    def search id
      client_search ARTIST_URI, id
    end
  end
end
