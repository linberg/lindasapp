FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :admin, class: User do
    email
    password "987654321"
    first_name "Admin"
    last_name "User"
    admin true
  end

  factory :user do
    email 
    password "123456789"
    first_name "Snow"
    last_name "White"
    admin false
  end

end
