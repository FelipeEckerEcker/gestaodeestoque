FactoryBot.define do
    factory :endereco do
      nome { 'AV.Cristo Rei' }
      cpf { '07649264971' }
      cep { '85602010' }
      association :cidade, factory: :cidade
    end
end