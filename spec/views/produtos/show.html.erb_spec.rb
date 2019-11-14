require 'rails_helper'

RSpec.describe "produtos/show", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :nome => "Nome",
      :unidade => "Unidade",
      :grupodeproduto => "Grupodeproduto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/Grupodeproduto/)
  end
end
