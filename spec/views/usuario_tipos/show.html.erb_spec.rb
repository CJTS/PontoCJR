require 'spec_helper'

describe "usuario_tipos/show" do
  before(:each) do
    @usuario_tipo = assign(:usuario_tipo, stub_model(UsuarioTipo,
      :usuario => "Usuario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Usuario/)
  end
end
