require 'rails_helper'

RSpec.describe "cidades/edit", type: :view do
  before(:each) do
    @cidade = assign(:cidade, Cidade.create!(
      :nome => "MyString",
      :cep => "MyString",
      :bairro => "MyString"
    ))
  end

  it "renders the edit cidade form" do
    render

    assert_select "form[action=?][method=?]", cidade_path(@cidade), "post" do

      assert_select "input[name=?]", "cidade[nome]"

      assert_select "input[name=?]", "cidade[cep]"

      assert_select "input[name=?]", "cidade[bairro]"
    end
  end
end
