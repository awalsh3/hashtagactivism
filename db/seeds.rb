# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Seed: Deleting existing records...'

Cause.destroy_all
Task.destroy_all
Organization.destroy_all


puts 'Seed: Seeding...'

user1 = User.create(
  name: 'Annie Walsh',
  email: '123@gmail.com',
  password: '12345678'
  )


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

task11 = Task.create!(
  name: 'Share the trailer',
  content: "Share the trailer for Seaspiracy to social media to raise awareness of the film and its message",
  cause_id: cause2.id,
  time: 2,
  url: 'https://www.youtube.com/watch?v=1Q5CXN7soQg'
)

task12 = Task.create!(
  name: 'Sign this petition for protection of the ocean',
  content: "Sign this petition to call on the government to make a real difference to our oceans",
  cause_id: cause2.id,
  time: 5,
  url: 'https://action.greenpeace.org.uk/l/854853/2021-04-23/qwm74?source=UN&subsource=OCMRGLPEUN02GK&utm_source=bsd&utm_medium=redirect&utm_campaign=post%20pardot%20launch%20redirect'
)

task13 = Task.create!(
  name: 'Review resources to become an ocean activist',
  content: 'Inspired by Seaspiracy? Review resources to become an ocean activist',
  cause_id: cause2.id,
  time: 15,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

task14 = Task.create!(
  name: 'Check out Sea7, a live streamed ocean activist training camp',
  content: 'A wide range of resources to review following the G7 summit, and actions that can be taken',
  cause_id: cause2.id,
  time: 60,
  url: 'https://sea7.finisterre.com/'
)

task15 = Task.create!(
  name: 'Research local activism',
  content: 'Research ocean related activism close to you',
  cause_id: cause2.id,
  time: 10,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

task16 = Task.create!(
  name: 'Education petition',
  content: 'Sign this petition to push for education on ocean issues',
  cause_id: cause2.id,
  time: 10,
  url: 'https://www.bigblueoceancleanup.org/become-an-ocean-activist'
)

org1 = Organization.create!(
  name: 'Black Lives Matter',
  cause_id: cause1.id
)

puts 'Seed: Finished seeding!'
