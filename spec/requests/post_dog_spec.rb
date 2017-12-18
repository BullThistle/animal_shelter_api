require 'rails_helper'

describe "post a dog route", :type => :request do

  before do
    post '/api/v1/dogs', params: { :name => 'Buo', :breed => 'Bernese Mountain', :sex => 'Female'}
  end

  it 'returns the dogs name' do
    expect(JSON.parse(response.body)['name']).to eq('Buo')
  end

  it 'returns the dogs breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Bernese Mountain')
  end

  it 'returns the dogs sex' do
    expect(JSON.parse(response.body)['sex']).to eq('Female')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end