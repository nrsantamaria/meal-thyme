FactoryGirl.define do
  factory :user do
    username('Testuser')
    email('testuser@email.com')
    password('123456')
  end
end
