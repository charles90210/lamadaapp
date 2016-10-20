require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #manifesto" do
    it "returns http success" do
      get :manifesto
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #products" do
    it "returns http success" do
      get :products
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #faqs" do
    it "returns http success" do
      get :faqs
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #team" do
    it "returns http success" do
      get :team
      expect(response).to have_http_status(:success)
    end
  end

end
