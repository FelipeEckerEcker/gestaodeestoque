FactoryBot.define do
  factory :produto do
    nome { "Mouse" }
    association :unidade, factory: :unidade
    association :grupode_produto, factory: :grupode_produto
  end
end
