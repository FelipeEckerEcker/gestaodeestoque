require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'Validações gerais:' do
    it { should belong_to(:cidade) }
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:cep) }
  end

  context 'ao informar cidade' do
    let(:endereco) { FactoryBot.create(:endereco) }

    context 'duas vezes na mesma cidade' do
      let(:endereco_repetido) { FactoryBot.build(:endereco,
                                                  cidade: endereco.cidade) }
    end

    context 'em duas cidades distintas no mesmo nome,cpf e bairro' do
      let(:endereco2) { FactoryBot.build(:endereco) }
      it 'deve permitir' do
        expect(endereco2).to be_valid
      end
    end
  end
end
