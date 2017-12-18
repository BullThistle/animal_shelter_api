require "rails_helper"

describe 'cat patch route', type: :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    patch "/api/v1/cats/#{cat.id}", params: { name: "Niko" }
  end

  it "updates cats name" do
    expect(Cat.find(cat.id).name).to eq('Niko')
  end
  
  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
  
end