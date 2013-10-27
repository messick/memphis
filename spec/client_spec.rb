require 'spec_helper'

describe Memphis::Client do
  describe '#initialize' do
    context 'empty API key' do
      it 'throws EmptyAPIKeyException' do
        expect{Memphis::Client.new "" }.to raise_exception Memphis::Client::EmptyAPIKeyError
      end
    end
    context 'invalid API key' do

    end

    context 'valid API key' do

    end
  end

  describe '#search' do

  end

end
