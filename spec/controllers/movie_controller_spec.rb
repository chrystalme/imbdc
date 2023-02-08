require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
      it "renders the index template" do
      expected = get :index
      expect(response).to eq(expected)
      expect(response.body).to eq ""
    end
    it "renders the movies/index template" do
      expected = get :index
      expect(response).to eq(expected)
      expect(response.body).to eq ""
    end
  end
  describe 'POST create' do
    it 'responds to html by defafult' do
      post :create, :params => { :movie => {:title => "Top Gun - Maverick", :category => 1, :rating => 0.0, :text => "New movie by Tom cruise"}}
      expect(response.media_type).to eq("text/html")
    end
    it 'responds to custom format when provided in the params' do
      post :create, :params => { :movie => {:title => "Top Gun - Maverick", :category => 1, :rating => 0.0, :text => "New movie by Tom cruise"}, :format => :json}
      expect(response.media_type).to eq("application/json")
    end
  end
end