require 'rails_helper'

RSpec.describe Cidade, type: :model do
  context 'validações gerais:' do
    it { should belong_to(:estado) }
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:cep) }
    it { should validate_presence_of(:bairro) }
  end

  context 'ao informar estado' do
    let(:cidade) { FactoryBot.create(:cidade) }

    context 'duas vezes no mesmo estado' do
      let(:cidade_repetida) { FactoryBot.build(:cidade,
                                                  estado: cidade.estado) }

      it 'e em nomes diferentes, deve permitir' do
        cidade_repetida.nome = "Dois Vizinhos"
        expect(cidade_repetida).to be_valid
      end

      context 'em dois ceps distintos no mesmo estado' do
        let(:cidade2) { FactoryBot.build(:cidade) }
        it 'deve permitir' do
          expect(cidade2).to be_valid
        end
      end
      end
  end
end
