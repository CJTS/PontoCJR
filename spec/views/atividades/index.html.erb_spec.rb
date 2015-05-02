require 'spec_helper'

describe "atividades/index" do
  before(:each) do
    assign(:atividades, [
      stub_model(Atividade,
        :descricao => "Descricao",
        :atividade_tipo => nil
      ),
      stub_model(Atividade,
        :descricao => "Descricao",
        :atividade_tipo => nil
      )
    ])
  end

  it "renders a list of atividades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
