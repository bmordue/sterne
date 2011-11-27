require "spec_helper"

describe PlanetsController do
  describe "routing" do

    it "routes to #index" do
      get("/planets").should route_to("planets#index")
    end

    it "routes to #new" do
      get("/planets/new").should route_to("planets#new")
    end

    it "routes to #show" do
      get("/planets/1").should route_to("planets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/planets/1/edit").should route_to("planets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/planets").should route_to("planets#create")
    end

    it "routes to #update" do
      put("/planets/1").should route_to("planets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/planets/1").should route_to("planets#destroy", :id => "1")
    end

  end
end
