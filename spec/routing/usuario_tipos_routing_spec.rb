require "spec_helper"

describe UsuarioTiposController do
  describe "routing" do

    it "routes to #index" do
      get("/usuario_tipos").should route_to("usuario_tipos#index")
    end

    it "routes to #new" do
      get("/usuario_tipos/new").should route_to("usuario_tipos#new")
    end

    it "routes to #show" do
      get("/usuario_tipos/1").should route_to("usuario_tipos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usuario_tipos/1/edit").should route_to("usuario_tipos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usuario_tipos").should route_to("usuario_tipos#create")
    end

    it "routes to #update" do
      put("/usuario_tipos/1").should route_to("usuario_tipos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usuario_tipos/1").should route_to("usuario_tipos#destroy", :id => "1")
    end

  end
end
