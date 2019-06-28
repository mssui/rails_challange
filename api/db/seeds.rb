# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
events = Event.create([
    {"starts_at"=>"2019-07-02T10:50:46.708Z", "ends_at"=>"2019-07-02T10:50:46.708Z", "kind"=>"hfigoo", "weekly_recurring"=>true}])