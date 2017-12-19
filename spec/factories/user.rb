FactoryBot.define do
  factory :user do
    full_name "Max Stackhouse"
    email "max@email.com"
    password "12345"
    role 0
  end

  factory :admin, class: User do
    full_name "Max Stackhouse"
    email "max@email.com"
    password "12345"
    role 1
  end

end
