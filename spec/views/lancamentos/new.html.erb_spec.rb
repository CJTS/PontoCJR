require 'spec_helper'

describe "lancamentos/new" do
  before(:each) do
    assign(:lancamento, stub_model(Lancamento,
      :atividade => nil,
      :usuario => nil
    ).as_new_record)
  end

  it "renders new lancamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lancamentos_path, "post" do
      assert_select "input#lancamento_atividade[name=?]", "lancamento[atividade]"
      assert_select "input#lancamento_usuario[name=?]", "lancamento[usuario]"
    end
  end
end
