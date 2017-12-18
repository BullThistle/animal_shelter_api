require 'rails_helper'

describe "post a cat route", :type => :request do

  before do
    post '/api/v1/cats', params: { :name => 'Niko', :breed => 'Bombay', :sex => 'Male'}
  end

  it 'returns the cats name' do
    expect(JSON.parse(response.body)['name']).to eq('Niko')
  end

  it 'returns the cats breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Bombay')
  end

  it 'returns the cats sex' do
    expect(JSON.parse(response.body)['sex']).to eq('Male')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end