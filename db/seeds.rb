# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.create(start_date: DateTime.new(2017,1,2), end_date: DateTime.new(2017,1,4))
User.create(first_name: 'Greg', last_name: 'Cubrick', email: 'greg.cubrick@example.com')

unaccepted_profile = Profile.create(phone_number: '873229123')
User.create(first_name: 'Amy', last_name: 'Sadstring', email: 'amy.sadstring@example.com', profiles: [unaccepted_profile])

accepted_profile = Profile.create(phone_number: '726290830', accepted_at: DateTime.new(2017,1,2))
User.create(first_name: 'Goddie',
  last_name: 'Poodie',
  email: 'goodie.poodie@example.com',
  profiles: [accepted_profile],
  availability: Availability.create)
