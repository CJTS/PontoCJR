require 'spec_helper'

describe "usuarios/index" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email",
        :perfil => nil,
        :usuario_tipo => nil
      ),
      stub_model(Usuario,
        :nome => "Nome",
        :login => "Login",
        :senha => "Senha",
        :email => "Email",
        :perfil => nil,
        :usuario_tipo => nil
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
