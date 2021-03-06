FactoryGirl.define do
  factory :user do
    username('Testuser')
    email('testuser@email.com')
    password('123456')
    dietary_restrictions('None')
    calories(2000)
    protein(50)
    fat(25)
    carbohydrates(25)
  end

  factory :recipe do
    title('Chicken')
    imageUrl('http://nowiknow.com/wp-content/uploads/chicken-011.jpg')
    calories(150)
    protein(50)
    fat(50)
    carbohydrates(20)
    instructions('Preheat oven to 500 degrees, Cook chicken')
  end
end
