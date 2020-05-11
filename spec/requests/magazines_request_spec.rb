require 'rails_helper'

RSpec.describe "Magazines", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/magazines/index"
      expect(response).to have_http_status(:success)
    end
  end

end
