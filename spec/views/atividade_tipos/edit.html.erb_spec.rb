require 'spec_helper'

describe "atividade_tipos/edit" do
  before(:each) do
    @atividade_tipo = assign(:atividade_tipo, stub_model(AtividadeTipo,
      :tipo => "MyString"
    ))
  end

  it "renders the edit atividade_tipo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atividade_tipo_path(@atividade_tipo), "post" do
      assert_select "input#atividade_tipo_tipo[name=?]", "atividade_tipo[tipo]"
    end
  end
end
