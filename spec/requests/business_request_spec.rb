require 'rails_helper'

RSpec.describe "Businesses", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/business/index"
      expect(response).to have_http_status(:success)
    end
  end

end
