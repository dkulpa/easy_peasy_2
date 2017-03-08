# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.create(start_date: DateTime.new(2017, 1, 2), end_date: DateTime.new(2017, 1, 4))
User.create(first_name: 'Greg', last_name: 'Cubrick', email: 'greg.cubrick@example.com')

unaccepted_profile = Profile.create(phone_number: '873229123')
User.create(first_name: 'Amy',
  last_name: 'Sadstring',
  email: 'amy.sadstring@example.com',
  profile: unaccepted_profile)

accepted_profile = Profile.create(phone_number: '726290830', accepted_at: DateTime.new(2017, 1, 2))
User.create(first_name: 'Goddie',
  last_name: 'Poodie',
  email: 'goodie.poodie@example.com',
  profile: accepted_profile,
  availabilities: [Availability.create])

User.create(first_name: 'John',
  last_name: 'Cobalt',
  email: 'john.cobalt@example.com',
  profile: accepted_profile,
  availabilities: [
    Availability.create(day_off: DateTime.new(2017, 1, 1)),
    Availability.create(day_off: DateTime.new(2017, 1, 5))
  ]
)

User.create(first_name: 'Mara',
  last_name: 'Splitkova',
  email: 'mara.splitkova@example.com',
  profile: accepted_profile,
  availabilities: [
    Availability.create(day_off: DateTime.new(2017, 1, 2)),
    Availability.create(day_off: DateTime.new(2017, 1, 10))
  ]
)
