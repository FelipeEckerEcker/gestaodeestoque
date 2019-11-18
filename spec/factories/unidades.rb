FactoryBot.define do
    factory :unidade do
      descricao { 'MyString' }
      sigla { 'MyString' }
      association :endereco, factory: :endereco
    end
end