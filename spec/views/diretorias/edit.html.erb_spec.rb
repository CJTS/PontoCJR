require 'spec_helper'

describe "diretorias/edit" do
  before(:each) do
    @diretoria = assign(:diretoria, stub_model(Diretoria,
      :sigla_diretoria => "MyString",
      :nome_diretoria => "MyString"
    ))
  end

  it "renders the edit diretoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diretoria_path(@diretoria), "post" do
      assert_select "input#diretoria_sigla_diretoria[name=?]", "diretoria[sigla_diretoria]"
      assert_select "input#diretoria_nome_diretoria[name=?]", "diretoria[nome_diretoria]"
    end
  end
end
