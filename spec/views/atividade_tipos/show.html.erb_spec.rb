require 'spec_helper'

describe "atividade_tipos/show" do
  before(:each) do
    @atividade_tipo = assign(:atividade_tipo, stub_model(AtividadeTipo,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
