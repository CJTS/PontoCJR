require 'spec_helper'

describe "atividades/edit" do
  before(:each) do
    @atividade = assign(:atividade, stub_model(Atividade,
      :descricao => "MyString",
      :atividade_tipo => nil
    ))
  end

  it "renders the edit atividade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atividade_path(@atividade), "post" do
      assert_select "input#atividade_descricao[name=?]", "atividade[descricao]"
      assert_select "input#atividade_atividade_tipo[name=?]", "atividade[atividade_tipo]"
    end
  end
end
