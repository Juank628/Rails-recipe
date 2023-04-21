require 'rails_helper'

RSpec.describe FoodsController, type: :request do
    it 'should response /foods' do
        get '/foods'
        expect(response).to be_successful
    end

    it 'ensures the response body has the correct text' do
        get '/foods'
        expect(response.body).to include('Foods')
    end

    it 'ensures the response body has Add Food button' do
        get '/foods'
        expect(response.body).to include('Add food')
    end

    it 'should response /foods/new' do
        get '/foods/new'
        expect(response).to be_successful
    end

    it 'ensures the response body has Add Food button' do
        get '/foods/new'
        expect(response.body).to include('Add food')
    end

    it 'ensures the response body has Name field' do
        get '/foods/new'
        expect(response.body).to include('Name')
    end

    it 'ensures the response body has Unit field' do
        get '/foods/new'
        expect(response.body).to include('Measurement unit')
    end

    it 'ensures the response body has Price field' do
        get '/foods/new'
        expect(response.body).to include('Price')
    end

    it 'ensures the response body has Quantity field' do
        get '/foods/new'
        expect(response.body).to include('Quantity')
    end
end