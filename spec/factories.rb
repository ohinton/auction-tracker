FactoryGirl.define do
  factory :user do

  end
end

FactoryGirl.define do
  factory(:volunteer) do
    name('Test Volunteer')
    phone('503-000-0000')
    email('test@email.com')
    address('12345 Test Address')
    city('Portland')
    state('OR')
    zip('97210')
  end
end

FactoryGirl.define do
  factory(:donor) do
    name('Test Donor')
    phone('503-000-0000')
    email('test@email.com')
    address('12345 Test Address')
    city('Portland')
    state('OR')
    zip('97210')
  end
end

FactoryGirl.define do
  factory(:update) do
    note('Test note')
  end
end
