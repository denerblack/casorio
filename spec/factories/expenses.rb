# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    name "MyString"
    amount 2
    unit_value 800
    unit "Kilo"
  end
end
