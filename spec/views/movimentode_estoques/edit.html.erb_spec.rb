require 'rails_helper'

RSpec.describe "movimentode_estoques/edit", type: :view do
  before(:each) do
    @movimentode_estoque = assign(:movimentode_estoque, MovimentodeEstoque.create!(
      :quantidade => 1,
      :pessoa => "MyString",
      :operacao => "MyString",
      :produto => "MyString"
    ))
  end

  it "renders the edit movimentode_estoque form" do
    render

    assert_select "form[action=?][method=?]", movimentode_estoque_path(@movimentode_estoque), "post" do

      assert_select "input[name=?]", "movimentode_estoque[quantidade]"

      assert_select "input[name=?]", "movimentode_estoque[pessoa]"

      assert_select "input[name=?]", "movimentode_estoque[operacao]"

      assert_select "input[name=?]", "movimentode_estoque[produto]"
    end
  end
end
