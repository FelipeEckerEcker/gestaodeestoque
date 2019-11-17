require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'Validações gerais:' do
  it { should belong_to(:unidade).class_name('Pessoa') } 
  it { should belong_to(:grupodeproduto).class_name('Pessoa') } 
  it { should validate_presence_of(:nome) }
  end
end
