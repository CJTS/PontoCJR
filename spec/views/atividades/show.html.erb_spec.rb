require 'spec_helper'

describe "atividades/show" do
  before(:each) do
    @atividade = assign(:atividade, stub_model(Atividade,
      :descricao => "Descricao",
      :atividade_tipo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(//)
  end
end
