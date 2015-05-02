require 'spec_helper'

describe "perfis/index" do
  before(:each) do
    assign(:perfis, [
      stub_model(Perfil,
        :tipo => "Tipo"
      ),
      stub_model(Perfil,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of perfis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
