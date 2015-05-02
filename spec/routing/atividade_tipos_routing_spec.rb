require "spec_helper"

describe AtividadeTiposController do
  describe "routing" do

    it "routes to #index" do
      get("/atividade_tipos").should route_to("atividade_tipos#index")
    end

    it "routes to #new" do
      get("/atividade_tipos/new").should route_to("atividade_tipos#new")
    end

    it "routes to #show" do
      get("/atividade_tipos/1").should route_to("atividade_tipos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/atividade_tipos/1/edit").should route_to("atividade_tipos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/atividade_tipos").should route_to("atividade_tipos#create")
    end

    it "routes to #update" do
      put("/atividade_tipos/1").should route_to("atividade_tipos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/atividade_tipos/1").should route_to("atividade_tipos#destroy", :id => "1")
    end

  end
end
