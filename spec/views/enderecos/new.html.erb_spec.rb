require 'rails_helper'

RSpec.describe "enderecos/new", type: :view do
  before(:each) do
    assign(:endereco, Endereco.new(
      :nome => "MyString",
      :cpf => "MyString",
      :cep => "MyString"
    ))
  end

  it "renders new endereco form" do
    render

    assert_select "form[action=?][method=?]", enderecos_path, "post" do

      assert_select "input[name=?]", "endereco[nome]"

      assert_select "input[name=?]", "endereco[cpf]"

      assert_select "input[name=?]", "endereco[cep]"
    end
  end
end
