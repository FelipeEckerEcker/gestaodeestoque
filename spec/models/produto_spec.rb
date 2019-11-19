require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'Validações gerais:' do
  it { should belong_to(:unidade) } 
  it { should belong_to(:grupode_produto) } 
  it { should validate_presence_of(:nome) }
  end

  context 'ao trazer a unidade do produto ' do
    let(:produto) { FactoryBot.create(:produto) }

    context 'duas vezes no mesmo grupo de produto' do
      let(:produto_repetido) { FactoryBot.build(:produto,
                                                  grupode_produto: produto.grupode_produto,
                                                  unidade: produto.unidade) }

    context 'em dois grupos de produtos distintos no mesmo nome de unidade do produto' do
      let(:produto2) { FactoryBot.build(:produto) }
      it 'deve permitir' do
        expect(produto2).to be_valid
      end
    end
    end
  end
end
