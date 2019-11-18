require 'rails_helper'

RSpec.describe MovimentodeEstoque, type: :model do
  context 'Validações gerais:' do
    it { should belong_to(:pessoa) }
    it { should belong_to(:operacao) }
    it { should belong_to(:produto) }
    it { should validate_presence_of(:data) }
    it { should validate_numericality_of(:quantidade).is_greater_than_or_equal_to(1).is_less_than_or_equal_to(8) }
  end
end
