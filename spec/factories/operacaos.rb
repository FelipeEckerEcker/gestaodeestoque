FactoryBot.define do
  factory :operacao, class: 'Pessoa' do
    descricao { "MyString" }
    tipo { :operacao }
  end

  factory :venda, class: 'Pessoa' do
    descricao { "MyString" }
    tipo { :venda }
  end  
end
