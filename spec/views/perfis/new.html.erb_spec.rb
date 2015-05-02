require 'spec_helper'

describe "perfis/new" do
  before(:each) do
    assign(:perfil, stub_model(Perfil,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new perfil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", perfis_path, "post" do
      assert_select "input#perfil_tipo[name=?]", "perfil[tipo]"
    end
  end
end
