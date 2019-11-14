require 'rails_helper'

RSpec.describe SaldoEstoque, type: :model do

    context 'No saldo de estoque' do
        let(:produto) { FactoryBot.create(:produto) }
        let(:produto) { FactoryBot.create(:produto) }
        let(:data) { 12/11/2019 }

    context 'um produto nao foi produzido ainda' do
        it 'deve criar um produto novo' do
          expect(SaldoEstoque.new(produto, produto, data).produto).to be_an_instance_of(Produto)
        end  

        it 'deve salvar o novo produto' do
            produto = SaldoEstoque.new(produto, produto, data).produto
            expect(produto).to be_persisted
        end
    end
    end



end