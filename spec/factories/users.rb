FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Thang'
    last_name 'Bui'
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authoriozed'
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
