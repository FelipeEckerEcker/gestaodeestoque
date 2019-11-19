FactoryBot.define do
    factory :cidade do
      nome { 'Francisco Beltrão/PR' }
      cep { '85602010' }
      bairro { 'Cristo Rei' }
      association :estado, factory: :estado
    end
end