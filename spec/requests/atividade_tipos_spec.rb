require 'spec_helper'

describe "AtividadeTipos" do
  describe "GET /atividade_tipos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get atividade_tipos_path
      response.status.should be(200)
    end
  end
end
