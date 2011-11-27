require "spec_helper"

describe ShipTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/ship_types").should route_to("ship_types#index")
    end

    it "routes to #new" do
      get("/ship_types/new").should route_to("ship_types#new")
    end

    it "routes to #show" do
      get("/ship_types/1").should route_to("ship_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ship_types/1/edit").should route_to("ship_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ship_types").should route_to("ship_types#create")
    end

    it "routes to #update" do
      put("/ship_types/1").should route_to("ship_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ship_types/1").should route_to("ship_types#destroy", :id => "1")
    end

  end
end
