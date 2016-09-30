FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@factory.com" }
    password('password')
  end
end

FactoryGirl.define do
  factory(:volunteer) do
    user
    first_name('TestFirst')
    last_name('TestLast')
    phone('503-000-0000')
    address('12345 Test Address')
    city('Portland')
    state('OR')
    zip('97210')
  end
end

FactoryGirl.define do
  factory(:donor) do
    volunteer
    name('Test Donor')
    business_phone('503-000-0000')
    business_email('test@email.com')
    address('12345 Test Address')
    city('Portland')
    state('OR')
    zip('97210')
    contact_person('Test Contact')
    contact_person_phone('503-000-0000')
    contact_person_email('test_contact@email.com')
    donation_request_link('www.example.com')
  end
end

FactoryGirl.define do
  factory(:update) do
    donor
    note('Test note')
    date ('1/1/2016')
  end
end
