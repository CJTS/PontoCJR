require 'spec_helper'

describe "atividade_tipos/new" do
  before(:each) do
    assign(:atividade_tipo, stub_model(AtividadeTipo,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new atividade_tipo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", atividade_tipos_path, "post" do
      assert_select "input#atividade_tipo_tipo[name=?]", "atividade_tipo[tipo]"
    end
  end
end
