require "spec_helper"

describe UniversesController do
  describe "routing" do

    it "routes to #index" do
      get("/universes").should route_to("universes#index")
    end

    it "routes to #new" do
      get("/universes/new").should route_to("universes#new")
    end

    it "routes to #show" do
      get("/universes/1").should route_to("universes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/universes/1/edit").should route_to("universes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/universes").should route_to("universes#create")
    end

    it "routes to #update" do
      put("/universes/1").should route_to("universes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/universes/1").should route_to("universes#destroy", :id => "1")
    end

  end
end
