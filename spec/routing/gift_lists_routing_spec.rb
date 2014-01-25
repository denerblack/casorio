require "spec_helper"

describe GiftListsController do
  describe "routing" do

    it "routes to #index" do
      get("/gift_lists").should route_to("gift_lists#index")
    end

    it "routes to #new" do
      get("/gift_lists/new").should route_to("gift_lists#new")
    end

    it "routes to #show" do
      get("/gift_lists/1").should route_to("gift_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gift_lists/1/edit").should route_to("gift_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gift_lists").should route_to("gift_lists#create")
    end

    it "routes to #update" do
      put("/gift_lists/1").should route_to("gift_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gift_lists/1").should route_to("gift_lists#destroy", :id => "1")
    end

  end
end
