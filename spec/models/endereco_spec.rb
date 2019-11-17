require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'Validações gerais:' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:cep) }
  end
end
