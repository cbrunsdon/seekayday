require "spec_helper"

describe DaysController do
  describe "routing" do

    it "routes to #index" do
      get("/days").should route_to("days#index")
    end

    it "routes to #new" do
      get("/days/new").should route_to("days#new")
    end

    it "routes to #show" do
      get("/days/1").should route_to("days#show", :id => "1")
    end

    it "routes to #edit" do
      get("/days/1/edit").should route_to("days#edit", :id => "1")
    end

    it "routes to #create" do
      post("/days").should route_to("days#create")
    end

    it "routes to #update" do
      put("/days/1").should route_to("days#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/days/1").should route_to("days#destroy", :id => "1")
    end

  end
end
