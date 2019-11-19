require 'rails_helper'

RSpec.describe MovimentodeEstoque, type: :model do
  context 'Validações gerais:' do
    it { should belong_to(:pessoa) }
    it { should belong_to(:operacao) }
    it { should belong_to(:produto) }
    it { should validate_presence_of(:data) }
    it { should validate_numericality_of(:quantidade).is_greater_than_or_equal_to(1).is_less_than_or_equal_to(8) }
  end

  context 'informar pessoa sobre o movimento do estoque ' do
    let(:movimentode_estoque) { FactoryBot.create(:movimentode_estoque) }

    context 'em pessoas diferentes' do
      let(:pessoa) { FactoryBot.create(:pessoa, endereco: movimentode_estoque.endereco) }
    end  

    context 'em operacoes diferentes' do
      let(:operacao) { FactoryBot.create(:operacao, tipo: movimentode_estoque.tipo) }
    end  

    context 'em produtos diferentes' do
      let(:produto) { FactoryBot.create(:produto, unidade: movimentode_estoque.unidade, grupode_produto: movimentode_estoque.grupode_produto) }
    end  

    context 'duas vezes na mesma disciplina' do
      let(:movimentode_estoque_repetido) { FactoryBot.build(:movimentode_estoque,
                                                  pessoa: movimentode_estoque.pessoa,
                                                  operacao: movimentode_estoque.operacao,
                                                  produto: movimentode_estoque.produto) }    
    end
    end
end
