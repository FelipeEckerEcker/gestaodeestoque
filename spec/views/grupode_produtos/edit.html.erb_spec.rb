require 'rails_helper'

RSpec.describe "grupode_produtos/edit", type: :view do
  before(:each) do
    @grupode_produto = assign(:grupode_produto, GrupodeProduto.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit grupode_produto form" do
    render

    assert_select "form[action=?][method=?]", grupode_produto_path(@grupode_produto), "post" do

      assert_select "input[name=?]", "grupode_produto[nome]"
    end
  end
end
