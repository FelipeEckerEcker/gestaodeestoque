require 'rails_helper'

RSpec.describe "grupode_produtos/new", type: :view do
  before(:each) do
    assign(:grupode_produto, GrupodeProduto.new(
      :nome => "MyString"
    ))
  end

  it "renders new grupode_produto form" do
    render

    assert_select "form[action=?][method=?]", grupode_produtos_path, "post" do

      assert_select "input[name=?]", "grupode_produto[nome]"
    end
  end
end
