require "spec_helper"

describe DiretoriasController do
  describe "routing" do

    it "routes to #index" do
      get("/diretorias").should route_to("diretorias#index")
    end

    it "routes to #new" do
      get("/diretorias/new").should route_to("diretorias#new")
    end

    it "routes to #show" do
      get("/diretorias/1").should route_to("diretorias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diretorias/1/edit").should route_to("diretorias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diretorias").should route_to("diretorias#create")
    end

    it "routes to #update" do
      put("/diretorias/1").should route_to("diretorias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diretorias/1").should route_to("diretorias#destroy", :id => "1")
    end

  end
end
