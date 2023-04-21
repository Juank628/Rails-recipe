require 'rails_helper'

RSpec.describe FoodsController, type: :request do
    it 'should response /foods' do
        get '/foods'
        expect(response).to be_successful
    end
end