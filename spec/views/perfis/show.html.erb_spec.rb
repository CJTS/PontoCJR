require 'spec_helper'

describe "perfis/show" do
  before(:each) do
    @perfil = assign(:perfil, stub_model(Perfil,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
