FactoryBot.define do
    factory :produto do
      nome { 'Teclado' }
      association :unidade, factory: :unidade
      association :grupode_produto, factory: :grupode_produto
    end
end