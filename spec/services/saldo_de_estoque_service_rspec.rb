require 'rails_helper'

RSpec.describe SaldoService, type: :model do
    
  context 'Ao produzir' do
    let(:produto) { FactoryBot.create(:produto) }
    let(:data) { 18/11/2019 }

    context 'um produto que nao foi produzido ainda' do
        it 'deve criar um produto novo' do
            expect(SaldoService.new(produto, data).produto).to be_an_instance_of(Produto)
        end  
        
        it 'deve salvar o novo produto' do
            produto = SaldoService.new(produto, data).produto
            expect(produto).to be_persisted
        end
    end

    context 'um aluno ja matriculado' do
        let!(:produto) { FactoryBot.create(:produto, produto: produto, data: data) }
        it 'Deve validar' do
                expect{ 
                  SaldoService.new(produto, data).produto }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Produto ja produzido nesta data'))
        end    
    end
  end
end
