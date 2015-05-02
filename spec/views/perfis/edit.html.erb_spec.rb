require 'spec_helper'

describe "perfis/edit" do
  before(:each) do
    @perfil = assign(:perfil, stub_model(Perfil,
      :tipo => "MyString"
    ))
  end

  it "renders the edit perfil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", perfil_path(@perfil), "post" do
      assert_select "input#perfil_tipo[name=?]", "perfil[tipo]"
    end
  end
end
