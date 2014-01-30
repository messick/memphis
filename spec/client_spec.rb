require 'spec_helper'

module Memphis
  class TestSearch < Memphis::Client
    URI = 'http://www.example.com'

    def initialize
      super
    end

    def search id
      client_search URI, id
    end
  end
end

describe Memphis::Client do
  describe '#initialize' do
    context 'instantiated directly' do
      it 'raises DirectClientUserError' do
        expect{Memphis::Client.new}.to raise_exception Memphis::Client::DirectClientUserError
      end
    end
    context 'not instantiated directly' do
      context 'invalid API key' do
        context 'empty API key' do
          it 'throws EmptyAPIKeyException' do
            Memphis.api_key = nil
            expect{Memphis::TestSearch.new}.to raise_exception Memphis::TestSearch::EmptyAPIKeyError
          end
        end
      end

      context 'valid API key' do

      end
    end

    describe '#search' do
      let(:client) { Memphis::TestSearch.new}

      before(:each) do
        Memphis.configure do |config|
          config.api_key = 'FAKEKEY'
        end
      end

      after(:each) do
        Memphis.reset
      end

      context 'invalid search ID' do
        context 'empty search ID' do
          it 'throws EmptySearchIDException' do
            expect{client.search "" }.to raise_exception Memphis::Client::EmptySearchIDError
          end
        end
      end
    end
  end
end
