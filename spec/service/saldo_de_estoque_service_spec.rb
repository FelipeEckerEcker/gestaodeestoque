require 'rails_helper'

RSpec.describe SaldoEstoqueService, type: :model do
    
  context 'Ao vender' do
    let(:produto) { FactoryBot.create(:produto) }
    let(:data) { 19/11/2019 }

    context 'o produto irá aumentar' do
        it 'deve criar um produto novo' do
            expect(SaldoEstoqueService.vender(produto, data)).to be_an_instance_of(MovimentodeEstoque)
        end  
        
        it 'deve criar um saldo para o produto' do
            saldo = SaldoEstoqueService.vender(produto, data)
            expect(saldo.produto).to eq(produto)
        end

        it 'deve salvar o saldo do produto' do
            saldo = SaldoEstoqueService.vender(produto, data)
            expect(saldo.persisted?).to be false
        end    
    end
  end
end
