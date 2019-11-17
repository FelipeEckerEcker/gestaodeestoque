FactoryBot.define do
    factory :compra, class: 'Pessoa' do
      descricao { "MyString" }
      tipo { :compra }
    end
end
  