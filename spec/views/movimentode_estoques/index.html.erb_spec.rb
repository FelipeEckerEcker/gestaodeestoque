require 'rails_helper'

RSpec.describe "movimentode_estoques/index", type: :view do
  before(:each) do
    assign(:movimentode_estoques, [
      MovimentodeEstoque.create!(
        :quantidade => 2,
        :pessoa => "Pessoa",
        :operacao => "Operacao",
        :produto => "Produto"
      ),
      MovimentodeEstoque.create!(
        :quantidade => 2,
        :pessoa => "Pessoa",
        :operacao => "Operacao",
        :produto => "Produto"
      )
    ])
  end

  it "renders a list of movimentode_estoques" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Pessoa".to_s, :count => 2
    assert_select "tr>td", :text => "Operacao".to_s, :count => 2
    assert_select "tr>td", :text => "Produto".to_s, :count => 2
  end
end
