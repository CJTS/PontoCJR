require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "Nome",
      :login => "Login",
      :senha => "Senha",
      :email => "Email",
      :perfil => nil,
      :usuario_tipo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Login/)
    rendered.should match(/Senha/)
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
