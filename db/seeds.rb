# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.create(
  start_date: DateTime.new(2017, 1, 2),
  end_date: DateTime.new(2017, 1, 4)
)

profiles = Profile.create([
  { phone_number: '873229123' },
  { phone_number: '726290830', accepted_at: DateTime.new(2017, 1, 2) },
  { phone_number: '234991092', accepted_at: DateTime.new(2017, 1, 3) },
  { phone_number: '362891031', accepted_at: DateTime.new(2017, 1, 4) }
])

availabilities = Availability.create([
  { day_off: DateTime.new(2017, 1, 1) },
  { day_off: DateTime.new(2017, 1, 5) },
  { day_off: DateTime.new(2017, 1, 2) },
  { day_off: DateTime.new(2017, 1, 10) }
])

User.create([
  { first_name: 'Greg', last_name: 'Cubrick', email: 'greg.cubrick@example.com' },
  { first_name: 'Amy',
    last_name:  'Sadstring',
    email:      'amy.sadstring@example.com',
    profile:    profiles[0]
  },
  { first_name:     'Goddie',
    last_name:      'Poodie',
    email:          'goodie.poodie@example.com',
    profile:        profiles[1],
    availabilities: [Availability.create]
  },
  { first_name:     'John',
    last_name:      'Cobalt',
    email:          'john.cobalt@example.com',
    profile:        profiles[2],
    availabilities: [
      availabilities[0],
      availabilities[1]
    ]
  },
  { first_name:     'Mara',
    last_name:      'Splitkova',
    email:          'mara.splitkova@example.com',
    profile:        profiles[3],
    availabilities: [
      availabilities[2],
      availabilities[3]
    ]
  }
])
