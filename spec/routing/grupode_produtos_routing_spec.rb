require "rails_helper"

RSpec.describe GrupodeProdutosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/grupode_produtos").to route_to("grupode_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/grupode_produtos/new").to route_to("grupode_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/grupode_produtos/1").to route_to("grupode_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grupode_produtos/1/edit").to route_to("grupode_produtos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/grupode_produtos").to route_to("grupode_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/grupode_produtos/1").to route_to("grupode_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/grupode_produtos/1").to route_to("grupode_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grupode_produtos/1").to route_to("grupode_produtos#destroy", :id => "1")
    end
  end
end
