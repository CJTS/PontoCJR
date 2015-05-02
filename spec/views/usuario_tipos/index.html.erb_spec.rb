require 'spec_helper'

describe "usuario_tipos/index" do
  before(:each) do
    assign(:usuario_tipos, [
      stub_model(UsuarioTipo,
        :usuario => "Usuario"
      ),
      stub_model(UsuarioTipo,
        :usuario => "Usuario"
      )
    ])
  end

  it "renders a list of usuario_tipos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
  end
end
