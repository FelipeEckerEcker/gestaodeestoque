FactoryBot.define do
  factory :movimentode_estoque do
    data { "2019-11-14" }
    quantidade { 1 }
    pessoa { "MyString" }
    operacao { "MyString" }
    produto { "MyString" }
  end
end
