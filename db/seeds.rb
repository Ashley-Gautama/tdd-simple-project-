# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
steven=Actor.create!( { name: "steven shy", bio: "very shy guy",age:43})
bob=Actor.create!( { name: "bob bobbit", bio: "the man with the horrible name",age:31})
shane=Actor.create!( { name: "shane mcmahon", bio: "He jumped from a very high ladder...",age:38})
roger=Actor.create!( { name: "roger federer", bio: "best tenisser ever nuff said ",age:34})
ryu=Actor.create!( { name: "ryu hoshi", bio: "ultimate karateka",age:27})

movie1=Movie.create!( { title: "the wildling", description:"Hope your in for a wild ride", releasedate: 1997,actors:[steven,roger,shane]})
movie2=Movie.create!( { title: "yes please",description:"just weird really", releasedate: 1985,actors:[bob]})
movie3=Movie.create!( { title: "the postmen",description:"My life....", releasedate: 2014,actors:[shane,roger,ryu,bob]})
movie4=Movie.create!( { title: "after",description:"........", releasedate: 2005,actors:[steven,bob]})
movie5=Movie.create!( { title: "Malcom X", description:"Sounds coll enough right?", releasedate: 2001, actors:[ryu,roger]})
