require "spec_helper"

describe PerfisController do
  describe "routing" do

    it "routes to #index" do
      get("/perfis").should route_to("perfis#index")
    end

    it "routes to #new" do
      get("/perfis/new").should route_to("perfis#new")
    end

    it "routes to #show" do
      get("/perfis/1").should route_to("perfis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/perfis/1/edit").should route_to("perfis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/perfis").should route_to("perfis#create")
    end

    it "routes to #update" do
      put("/perfis/1").should route_to("perfis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/perfis/1").should route_to("perfis#destroy", :id => "1")
    end

  end
end
