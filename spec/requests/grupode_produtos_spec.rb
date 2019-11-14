require 'rails_helper'

RSpec.describe "GrupodeProdutos", type: :request do
  describe "GET /grupode_produtos" do
    it "works! (now write some real specs)" do
      get grupode_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
