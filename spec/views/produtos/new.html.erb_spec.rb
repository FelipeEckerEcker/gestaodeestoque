require 'rails_helper'

RSpec.describe "produtos/new", type: :view do
  before(:each) do
    assign(:produto, Produto.new(
      :nome => "MyString",
      :unidade => "MyString",
      :grupodeproduto => "MyString"
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input[name=?]", "produto[nome]"

      assert_select "input[name=?]", "produto[unidade]"

      assert_select "input[name=?]", "produto[grupodeproduto]"
    end
  end
end
