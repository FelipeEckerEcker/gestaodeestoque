require 'rails_helper'

RSpec.describe "pessoas/edit", type: :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :nome => "MyString",
      :documento => "MyString",
      :endereco => "MyString",
      :cidade => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoa_path(@pessoa), "post" do

      assert_select "input[name=?]", "pessoa[nome]"

      assert_select "input[name=?]", "pessoa[documento]"

      assert_select "input[name=?]", "pessoa[endereco]"

      assert_select "input[name=?]", "pessoa[cidade]"

      assert_select "input[name=?]", "pessoa[estado]"
    end
  end
end
