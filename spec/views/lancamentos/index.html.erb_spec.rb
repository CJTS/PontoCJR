require 'spec_helper'

describe "lancamentos/index" do
  before(:each) do
    assign(:lancamentos, [
      stub_model(Lancamento,
        :atividade => nil,
        :usuario => nil
      ),
      stub_model(Lancamento,
        :atividade => nil,
        :usuario => nil
      )
    ])
  end

  it "renders a list of lancamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
