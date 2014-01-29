require 'spec_helper'

describe Memphis::Configuration do
  describe '#api_key' do
    it 'should return default key' do
      Memphis.api_key.should eq Memphis::Configuration::DEFAULT_API_KEY
    end

    after do
      Memphis.reset
    end
  end

  describe '#configure' do
      it "should set the api_key" do
        Memphis.configure do |config|
          test_key = 'test_key'
          config.api_key = test_key
          Memphis.api_key.should eq test_key
        end
      end
    end
end
