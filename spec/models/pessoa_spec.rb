require 'rails_helper'

RSpec.describe Pessoa, type: :model do
    context 'Validações gerais:' do
        it { should belong_to(:endereco) }
        it { should validate_presence_of(:nome) }
        it { should validate_presence_of(:documento) }
      end
end
