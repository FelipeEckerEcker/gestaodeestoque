FactoryBot.define do
    factory :operacao do
      descricao { 'Resgate de produto' }
      tipo { :operacao }
    end

    factory :venda do
      descricao { 'Venda de produto' }
      tipo { :venda }
    end
end
  