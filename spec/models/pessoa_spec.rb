require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  context 'validações gerais da pessoa' do
    it { should belong_to(:cidade) }
    it { should belong_to(:estado) }
    it { should belong_to(:endereco) }  
  end
end
