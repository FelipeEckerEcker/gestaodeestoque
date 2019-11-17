require 'rails_helper'

RSpec.describe Cidade, type: :model do
  context 'validações gerais:' do
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:cep) }
    it { should validate_presence_of(:bairro) }
  end
end
