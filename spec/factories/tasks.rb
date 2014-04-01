# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    email "MyString"
    owner "MyString"
    priority "MyString"
    private false
    deadline "2014-04-02 03:01:37"
  end
end
