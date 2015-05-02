require 'spec_helper'

describe "usuario_tipos/new" do
  before(:each) do
    assign(:usuario_tipo, stub_model(UsuarioTipo,
      :usuario => "MyString"
    ).as_new_record)
  end

  it "renders new usuario_tipo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usuario_tipos_path, "post" do
      assert_select "input#usuario_tipo_usuario[name=?]", "usuario_tipo[usuario]"
    end
  end
end
