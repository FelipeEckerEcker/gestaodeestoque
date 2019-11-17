FactoryBot.define do
  factory :movimentode_estoque do
    data { "2019-11-14" }
    quantidade { 1 }
    association :pessoa, factory: :pessoa
    association :operacao, factory: :operacao
    association :produto, factory: :produto
  end
end
