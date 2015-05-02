require 'spec_helper'

describe "diretorias/show" do
  before(:each) do
    @diretoria = assign(:diretoria, stub_model(Diretoria,
      :sigla_diretoria => "Sigla Diretoria",
      :nome_diretoria => "Nome Diretoria"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sigla Diretoria/)
    rendered.should match(/Nome Diretoria/)
  end
end
