require 'rails_helper'

RSpec.describe "pessoas/index", type: :view do
  before(:each) do
    assign(:pessoas, [
      Pessoa.create!(
        :nome => "Nome",
        :documento => "Documento",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :estado => "Estado"
      ),
      Pessoa.create!(
        :nome => "Nome",
        :documento => "Documento",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Documento".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
end
