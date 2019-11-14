require 'rails_helper'

RSpec.describe "grupode_produtos/show", type: :view do
  before(:each) do
    @grupode_produto = assign(:grupode_produto, GrupodeProduto.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
