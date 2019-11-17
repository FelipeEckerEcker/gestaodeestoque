FactoryBot.define do
  factory :pessoa do
    nome { "Felipe Ecker" }
    documento { "07649264971" }
    association :endereco, factory: :endereco
    association :cidade, factory: :cidade
    association :estado, factory: :estado
  end
end
