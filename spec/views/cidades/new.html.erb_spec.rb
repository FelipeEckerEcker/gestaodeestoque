require 'rails_helper'

RSpec.describe "cidades/new", type: :view do
  before(:each) do
    assign(:cidade, Cidade.new(
      :nome => "MyString",
      :cep => "MyString",
      :bairro => "MyString"
    ))
  end

  it "renders new cidade form" do
    render

    assert_select "form[action=?][method=?]", cidades_path, "post" do

      assert_select "input[name=?]", "cidade[nome]"

      assert_select "input[name=?]", "cidade[cep]"

      assert_select "input[name=?]", "cidade[bairro]"
    end
  end
end
