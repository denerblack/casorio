# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    text "MyText"
    author "MyString"
    email "MyString"
  end
end
