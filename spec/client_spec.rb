require 'spec_helper'

describe Memphis::Client do
  describe '#initialize' do
    context 'invalid API key' do
      context 'empty API key' do
        it 'throws EmptyAPIKeyException' do
          expect{Memphis::Client.new "" }.to raise_exception Memphis::Client::EmptyAPIKeyError
        end
      end
    end

    context 'valid API key' do

    end
  end

  describe '#search' do
    context 'invalid search ID' do
      let(:client) { Memphis::Client.new "fake_API_key" }
      context 'empty search ID' do
        it 'throws EmptySearchIDException' do
          expect{client.search "" }.to raise_exception Memphis::Client::EmptySearchIDError
        end
      end
    end

  end

end
