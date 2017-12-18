require 'rails_helper'

describe 'get dogs route', type: :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 50)}
  
  before { get '/api/v1/dogs' }
  
  it 'returns all dogs' do
    expect(JSON.parse(response.body).size).to eq(50)
  end
  
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  
end