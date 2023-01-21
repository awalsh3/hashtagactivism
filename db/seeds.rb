# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Seed: Deleting existing records...'

Cause.destroy_all

puts 'Seed: Seeding...'


cause1 = Cause.create!(
  name: '#blacklivesmatter',
  description: "Black Lives Matter (BLM) is a decentralized political and social movement protesting against incidents of police brutality and all racially motivated violence against black people."
  )
cause1.photo.attach(io: File.open('app/assets/images/13.png'), filename: 'blm.png', content_type: 'png')

cause2 = Cause.create!(
  name: '#climatechange',
  description: "Global climate change has already had observable effects on the environment. Glaciers have shrunk, ice on rivers and lakes is breaking up earlier, plant and animal ranges have shifted and trees are flowering sooner. Let's reverse this trend before it's too late!",
)
cause2.photo.attach(io: File.open('app/assets/images/8.png'), filename: 'blm.png', content_type: 'png')

cause3 = Cause.create!(
  name: '#womensrights',
  description: "Across the globe many women and girls still face discrimination on the basis of sex and gender. Gender inequality underpins many problems which disproportionately affect women and girls, such as domestic and sexual violence, lower pay, lack of access to education, and inadequate healthcare.
",
)
cause3.photo.attach(io: File.open('app/assets/images/14.png'), filename: 'blm.png', content_type: 'png')

puts 'Seed: Finished seeding!'
