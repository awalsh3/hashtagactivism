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

task1 = Task.create!(
  name: 'Sign this petition',
  content: 'Make a difference by signing the petition on Change.org',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task2 = Task.create!(
  name: 'Email the representative at blm.com',
  content: 'This service will assist you by matching your post code to your local branch, with links to your members website and contact page',
  cause_id: cause1.id,
  time: 20,
  url: 'https://ag.ny.gov/contact-attorney-general-letitia-james'
)

  task3 = Task.create!(
  name: 'Research and contact the BLAM movement',
  content: 'Research the BLAM movement, a community outreach programme based around education, and find out what they can provide to your local area',
  cause_id: cause1.id,
  time: 30,
  url: 'https://blamuk.org/'
)

task4 = Task.create!(
  name: 'Anti racism resources',
  content: 'A wide range of anti racism resources to research and get involved with',
  cause_id: cause1.id,
  time: 30,
  url: 'https://survivorsnetwork.org.uk/anti-racism-resources/'
)

task5 = Task.create!(
  name: 'Red Cross guide to teaching children about racism',
  content: 'Raise awareness with children and young people about racism with this guide',
  cause_id: cause1.id,
  time: 30,
  url: 'https://www.redcross.org.uk/get-involved/teaching-resources/talking-with-children-and-young-people-about-race-and-racism'
)

task6 = Task.create!(
  name: 'Donate to legal aid',
  content: 'Make a difference by donating to legal aid for BLM related cases',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)

task7 = Task.create!(
  name: 'Education petition',
  content: 'Sign this petition to push for equality education',
  cause_id: cause1.id,
  time: 10,
  url: 'https://www.change.org/t/black-lives-matter-en-us'
)


puts 'Seed: Finished seeding!'
