module Memphis
  class Memphis
    attr_accessor :result

    def initialize api_key=nil
      @client = Client.new api_key
    end

    def search id
      @result = @client.search id
    end

  end
end
