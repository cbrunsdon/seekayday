require "spec_helper"

describe HealthLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/health_levels").should route_to("health_levels#index")
    end

    it "routes to #new" do
      get("/health_levels/new").should route_to("health_levels#new")
    end

    it "routes to #show" do
      get("/health_levels/1").should route_to("health_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/health_levels/1/edit").should route_to("health_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/health_levels").should route_to("health_levels#create")
    end

    it "routes to #update" do
      put("/health_levels/1").should route_to("health_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/health_levels/1").should route_to("health_levels#destroy", :id => "1")
    end

  end
end
