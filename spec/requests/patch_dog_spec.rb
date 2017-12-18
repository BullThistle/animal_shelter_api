require "rails_helper"

describe 'dog patch route', type: :request do
  let!(:dog) { FactoryBot.create(:dog) }

  before do
    patch "/api/v1/dogs/#{dog.id}", params: { name: "Buo" }
  end

  it "updates dogs name" do
    expect(Dog.find(dog.id).name).to eq('Buo')
  end
  
  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
  
end