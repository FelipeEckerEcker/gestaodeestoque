require 'rails_helper'

RSpec.describe GrupodeProduto, type: :model do
  context 'Validações gerais:' do
    it { should validate_presence_of(:nome) }
  end
end
