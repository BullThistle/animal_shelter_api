require "rails_helper"

describe 'deleting cats', type: :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    delete "/api/v1/cats/#{cat.id}"
  end

  it "cats no longer exist in the database" do
    expect(Cat.all).to eq([])
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end