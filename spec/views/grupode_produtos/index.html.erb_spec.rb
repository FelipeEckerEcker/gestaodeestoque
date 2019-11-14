require 'rails_helper'

RSpec.describe "grupode_produtos/index", type: :view do
  before(:each) do
    assign(:grupode_produtos, [
      GrupodeProduto.create!(
        :nome => "Nome"
      ),
      GrupodeProduto.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of grupode_produtos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
