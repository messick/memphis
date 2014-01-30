require 'spec_helper'

describe Memphis::Client do
  describe '#initialize' do
    context 'invalid API key' do
      context 'empty API key' do
        it 'throws EmptyAPIKeyException' do
          Memphis.api_key = nil
          expect{Memphis::Client.new}.to raise_exception Memphis::Client::EmptyAPIKeyError
        end
      end
    end

    context 'valid API key' do

    end
  end

  describe '#search' do
    before(:each) do
      Memphis.configure do |config|
        config.api_key = 'FAKEKEY'
      end
    end

    after(:each) do
      Memphis.reset
    end

    context 'invalid search ID' do
      let(:client) { Memphis::Client.new}
      context 'empty search ID' do
        it 'throws EmptySearchIDException' do
          expect{client.search "" }.to raise_exception Memphis::Client::EmptySearchIDError
        end
      end
    end
  end
end
