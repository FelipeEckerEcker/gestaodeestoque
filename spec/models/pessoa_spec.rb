require 'rails_helper'

RSpec.describe Pessoa, type: :model do
    context 'Validações gerais:' do
        it { should belong_to(:endereco) }
        it { should validate_presence_of(:nome) }
        it { should validate_presence_of(:documento) }
      end

      context 'ao informar endereco da pessoa' do
        let(:pessoa) { FactoryBot.create(:pessoa) }

        context 'duas vezes no mesmo endereco da pessoa' do
          let(:pessoa_repetida) { FactoryBot.build(:pessoa,
        endereco: pessoa.endereco) }

        it 'e no mesmo nome, deve bloquear' do
          expect(pessoa_repetida).to_not be_valid
        end

        it 'e no mesmo documento, deve bloquear' do
          expect(pessoa_repetida).to_not be_valid
        end

        it 'e em nomes diferentes, deve permitir' do
          pessoa_repetida.nome = "Jose"
          expect(pessoa_repetida).to be_valid
        end

        context 'em dois documentos distintos no mesmo endereco' do
          let(:pessoa2) { FactoryBot.build(:pessoa) }
          it 'deve permitir' do
            expect(pessoa2).to be_valid
          end
        end
      end
    end

end
