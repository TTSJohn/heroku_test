# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# clear out the existing teams and users
Team.destroy_all
Player.destroy_all

# create 3 teams...
3.times do
  team = Team.create(
    name: Faker::Team.unique.name,
    sport: Faker::Team.sport,
  )

  # ...with 5 users each
  5.times do
    team.players.create(
      name: Faker::Name.unique.name,
      # no need to seed team_id, it'll do it for you. MAGIC!
    )
  end
end