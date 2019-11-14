require 'rails_helper'

RSpec.describe "MovimentodeEstoques", type: :request do
  describe "GET /movimentode_estoques" do
    it "works! (now write some real specs)" do
      get movimentode_estoques_path
      expect(response).to have_http_status(200)
    end
  end
end
