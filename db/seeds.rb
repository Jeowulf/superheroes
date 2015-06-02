# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Superhero.destroy_all
Superhero.create([
{name: "Batman", powers: "High-Tech Gadgets and Weapony", secret_identity:"Bruce Wayne", nemesis:"The Joker", villains_captured:43, image_url:"http://static.comicvine.com/uploads/scale_small/6/66303/2961034-screen+shot+2013-04-03+at+5.56.06+am.png"},
{name: "Robin", powers: "Batman's toys", secret_identity:"Dick Grayson", nemesis:"Batman's nemesis", villains_captured:5, image_url:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSErcHakVZ9SsIpivIQvlFubNzDb1URaCczyG11V6tmVaJCKnVW"},
{name: "The Flash", powers: "Super Speed", secret_identity:"Barry Allen", nemesis:"Yellow Flash", villains_captured:5000, image_url:"http://media.dcentertainment.com/sites/default/files/GalleryComics_1900x900_20140423_FLS_30_5329d5cdde72e0.54923345.jpg"},
{name: "Aquaman", powers: "Rules the Sea", secret_identity:"none", nemesis:"Black Manta", villains_captured:5, image_url:"http://media.dcentertainment.com/sites/default/files/AquamanSideburns.jpg"},
{name: "Wonder Woman", powers: "Flight, magical and physical resistances, animal empathy", secret_identity:"Princess Diana of Themyscir", nemesis:"Donna Troy", villains_captured:2003, image_url:"http://static.comicvine.com/uploads/original/11113/111130781/3837089-4758318565-Wonde.png"},
{name: "Superman", powers: "Superhuman strength, Flight, x-ray vision, speed, lasers outta da eyes, frost breath", secret_identity:"Clark Kent", nemesis:"Lex Luthor", villains_captured:100, image_url:"http://vignette2.wikia.nocookie.net/mkwikia/images/9/9b/Normal_Superman_Render.jpg/revision/latest?cb=20080926032720"},
{name: "Green Lantern", powers: "Can use powers ring to make anything he imagines reality", secret_identity:"Hal Jordan", nemesis:"Sinestro", villains_captured:1, image_url:"https://thefaust.files.wordpress.com/2010/02/hal-jordan-green-lantern.jpg"},
{name: "Martian Manhunter", powers: "superhuman strength, flight, invulnerability, and Martian Vision", secret_identity:"none", nemesis:"Malefic", villains_captured:12, image_url:"http://static.comicvine.com/uploads/original/11118/111186544/4058194-8598923014-28927.jpg"},
{name: "Green Arrow", powers: "Awesome with a bow", secret_identity:"Oliver Queen", nemesis:"Black Arrow", villains_captured:40, image_url:"http://fc08.deviantart.net/fs71/i/2014/246/f/0/green_arrow_by_uncannyknack-d7xtzf4.jpg"},
{name: "Black Canary", powers: " physical skills and fighting prowess over inborn abilities", secret_identity:"Dinah Lance", nemesis:"none", villains_captured:4, image_url:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRwLWu24GnqwlZvRADvKLMktT_ArnNdn78ONbIDb49e1xUET-0BCA"}
])
