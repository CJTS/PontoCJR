require 'spec_helper'

describe "atividades/new" do
  before(:each) do
    assign(:atividade, stub_model(Atividade,
      :descricao => "MyString",
      :atividade_tipo => nil
    ).as_new_record)
  end

  it "renders new atividade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atividades_path, "post" do
      assert_select "input#atividade_descricao[name=?]", "atividade[descricao]"
      assert_select "input#atividade_atividade_tipo[name=?]", "atividade[atividade_tipo]"
    end
  end
end
