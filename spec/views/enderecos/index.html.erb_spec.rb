require 'rails_helper'

RSpec.describe "enderecos/index", type: :view do
  before(:each) do
    assign(:enderecos, [
      Endereco.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :cep => "Cep"
      ),
      Endereco.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :cep => "Cep"
      )
    ])
  end

  it "renders a list of enderecos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
  end
end
