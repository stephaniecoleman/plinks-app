# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Steph")
User.create(name: "Betsy")

Musician.create(name: "Doc Boggs")
Musician.create(name: "Tommy Jarrell")
Musician.create(name: "Roscoe Holcomb")
Musician.create(name: "Hazel Dickens")
Musician.create(name: "Marcus Martin")

Following.create(fan_id: 1, musician_id: 1)
Following.create(fan_id: 1, musician_id: 2)
Following.create(fan_id: 1, musician_id: 3)
Following.create(fan_id: 1, musician_id: 4)

Following.create(fan_id: 2, musician_id: 2)
Following.create(fan_id: 2, musician_id: 3)
Following.create(fan_id: 2, musician_id: 4)
Following.create(fan_id: 2, musician_id: 5)

Plink.create(text: "I'm Tommy Jarrell, and I love Doc Boggs", plink_author_id: 2, plink_receiver_id: 1)
Plink.create(text: "I'm Tommy Jarrell, and I love Roscoe Holcomb", plink_author_id: 2, plink_receiver_id: 3)
Plink.create(text: "I'm Tommy Jarrell, and I love Hazel Dickens", plink_author_id: 2, plink_receiver_id: 4)

Plink.create(text: "I'm Hazel Dickens, and I love Tommy Jarrell", plink_author_id: 4, plink_receiver_id: 2)
Plink.create(text: "I'm Hazel Dickens, and I love Doc Boggs", plink_author_id: 4, plink_receiver_id: 1)