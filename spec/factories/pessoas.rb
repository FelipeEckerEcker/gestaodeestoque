FactoryBot.define do
    factory :pessoa do
      nome { 'Felipe' }
      documento { '07649264971' }
      association :endereco, factory: :endereco
    end
end