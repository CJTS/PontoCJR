require 'spec_helper'

describe "atividade_tipos/index" do
  before(:each) do
    assign(:atividade_tipos, [
      stub_model(AtividadeTipo,
        :tipo => "Tipo"
      ),
      stub_model(AtividadeTipo,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of atividade_tipos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
