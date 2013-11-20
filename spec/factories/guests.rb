# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guest do
    name "MyString"
    companions_amount 1
    confirmed false
  end
end
