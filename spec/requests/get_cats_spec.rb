require 'rails_helper'

describe 'get cats route', type: :request do
  let!(:cats) { FactoryBot.create_list(:cat, 50)}
  
  before { get '/api/v1/cats' }
  
  it 'returns all cats' do
    expect(JSON.parse(response.body).size).to eq(50)
  end
  
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  
end