module Memphis
  class Result

    attr_reader :providers

    def initialize(hash)
      @providers = []

      hash.each do |key,value|
        define_singleton_method(key.to_s){ hash[key] }
        @providers.push key
        @providers.sort!
      end
    end
  end
end
