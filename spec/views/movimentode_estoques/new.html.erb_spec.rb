require 'rails_helper'

RSpec.describe "movimentode_estoques/new", type: :view do
  before(:each) do
    assign(:movimentode_estoque, MovimentodeEstoque.new(
      :quantidade => 1,
      :pessoa => "MyString",
      :operacao => "MyString",
      :produto => "MyString"
    ))
  end

  it "renders new movimentode_estoque form" do
    render

    assert_select "form[action=?][method=?]", movimentode_estoques_path, "post" do

      assert_select "input[name=?]", "movimentode_estoque[quantidade]"

      assert_select "input[name=?]", "movimentode_estoque[pessoa]"

      assert_select "input[name=?]", "movimentode_estoque[operacao]"

      assert_select "input[name=?]", "movimentode_estoque[produto]"
    end
  end
end
