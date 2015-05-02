require 'spec_helper'

describe "diretorias/index" do
  before(:each) do
    assign(:diretorias, [
      stub_model(Diretoria,
        :sigla_diretoria => "Sigla Diretoria",
        :nome_diretoria => "Nome Diretoria"
      ),
      stub_model(Diretoria,
        :sigla_diretoria => "Sigla Diretoria",
        :nome_diretoria => "Nome Diretoria"
      )
    ])
  end

  it "renders a list of diretorias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sigla Diretoria".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Diretoria".to_s, :count => 2
  end
end
