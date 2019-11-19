FactoryBot.define do
    factory :movimentode_estoque do
      data { 19/11/2019 }
      quantidade { 12 }
      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :produto, factory: :produto
    end
end