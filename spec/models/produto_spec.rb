require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'Validações gerais:' do
  it { should belong_to(:unidade) } 
  it { should belong_to(:grupode_produto) } 
  it { should validate_presence_of(:nome) }
  end
end
