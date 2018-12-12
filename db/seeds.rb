require 'faker'

50.times do
    name = Faker::App.name
    RegisteredApplication.create!(
        user_id:  2,
        name:  name,
        url:   "www." + name + ".com"
    )
end

applications = RegisteredApplication.all

2500.times do
    event = Event.create!(
        registered_application: applications.sample,
        name: Faker::Hacker.verb
        )

    event.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end


puts "Seeds finished"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"
