# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(title:"Gladiator", description:"Russel Crowe is a boss in this video", subtitle: "Gladiator 'Are You Not Entertained' Scene", video_id: "//www.youtube.com/embed/FI1ylg4GKv8")
Movie.create(title: "Matilda", description:"This movie is just great. Who agrees?", subtitle:"Bruce's brownie scene", video_id:"//www.youtube.com/embed/EVWOQwZENBg")
Movie.create(title: "Oldboy", description:"The best fight scene ever filmed.", subtitle:"Oldboy: The Corridor Fight", video_id:"//www.youtube.com/embed/VwIIDzrVVdc")
Movie.create(title: "Cube", description:"The first scene in Cube.", subtitle:"Slice and Dice", video_id:"//www.youtube.com/embed/k8Tw4JhzORM")
Show.create(title: "Seinfeld", description:"This show is pretty boring.", subtitle:"Observational humor done poorly.", video_id:"//www.youtube.com/embed/PaPxSsK6ZQA" )
Show.create(title: "Friends", description:"This show is lame.", subtitle:"Don't watch this.", video_id:"//www.youtube.com/embed/R5Ty4e2UVME" )
Sound.create(title: 'The Preatures - Is This How You Feel?', soundcloud_url:'https://soundcloud.com/thepreatures/ithyf')
Sound.create(title: 'The Preatures - Somebody\'s Talking', soundcloud_url:'https://soundcloud.com/thepreatures/somebodys-talking')
Sound.create(title: 'Future Islands - Tin Man', soundcloud_url:'https://soundcloud.com/thequietus/future-islands-tin-man')
Sound.create(title: 'Future Islands - Old Friend', soundcloud_url:'https://soundcloud.com/district-hill/future-islands-old-friend')
Comment.create(video_id: 4, content:"What the hell?...")
Comment.create(video_id: 3, content:"Insanity!")
Comment.create(video_id: 3, content:"Wat.")
Comment.create(video_id: 4, content:"Catchy.")