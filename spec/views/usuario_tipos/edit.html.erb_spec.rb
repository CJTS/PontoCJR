require 'spec_helper'

describe "usuario_tipos/edit" do
  before(:each) do
    @usuario_tipo = assign(:usuario_tipo, stub_model(UsuarioTipo,
      :usuario => "MyString"
    ))
  end

  it "renders the edit usuario_tipo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usuario_tipo_path(@usuario_tipo), "post" do
      assert_select "input#usuario_tipo_usuario[name=?]", "usuario_tipo[usuario]"
    end
  end
end
