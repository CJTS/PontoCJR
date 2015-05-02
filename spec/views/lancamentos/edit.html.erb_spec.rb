require 'spec_helper'

describe "lancamentos/edit" do
  before(:each) do
    @lancamento = assign(:lancamento, stub_model(Lancamento,
      :atividade => nil,
      :usuario => nil
    ))
  end

  it "renders the edit lancamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lancamento_path(@lancamento), "post" do
      assert_select "input#lancamento_atividade[name=?]", "lancamento[atividade]"
      assert_select "input#lancamento_usuario[name=?]", "lancamento[usuario]"
    end
  end
end
