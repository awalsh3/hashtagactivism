# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Seed: Deleting existing records...'

Cause.destroy_all

puts 'Seed: Seeding...'


cause1 = Cause.create!(
  name: '#blacklivesmatter',
  description: "Black Lives Matter (BLM) is a decentralized political and social movement protesting against incidents of police brutality and all racially motivated violence against black people."
)

cause2 = Cause.create!(
  name: '#climatechange',
  description: "Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and lakes is breaking up earlier, plant and animal ranges have shifted and trees are flowering sooner. Let's reverse this trend before it's too late!",
)


puts 'Seed: Finished seeding!'
