FactoryGirl.define do
  factory :user do |f|
    f.name     "Seve Esparrago"
    f.username "esparrs"
    f.email    "seve@example.com"
    f.password "foobar22"
    f.password_confirmation "foobar22"
  end
end