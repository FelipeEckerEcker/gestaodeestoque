require 'rails_helper'

RSpec.describe Pessoa, type: :model do
    context 'Validações gerais:' do
        it { should belong_to(:endereco).class_name('Pessoa') }
        it { should belong_to(:cidade).class_name('Pessoa') }
        it { should belong_to(:estado).class_name('Pessoa') }
        it { should validate_presence_of(:nome) }
        it { should validate_presence_of(:documento) }
        it { should validate_uniqueness_of(:endereco) }
      end
end
