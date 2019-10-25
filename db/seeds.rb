User.destroy_all
Game.destroy_all
UserGame.destroy_all

duke = User.create(user_name:"Duke")
sarah = User.create(user_name:"Sarah")
bruce = User.create(user_name:"Bruce")
nick = User.create(user_name:"Nick")
jose = User.create(user_name:"Jose")
noa = User.create(user_name:"Noa")

hollow_knight = Game.create(title:"Hollow Knight", description: "Little skeleton person doesn't care about your sanity.")
breath_of_the_wild = Game.create(title:"The Legend of Zelda: Breath of the Wild", description:"Spend 200 hours collecting plant people poop.")
mario_odyssey = Game.create(title:"Super Mario Odyssey", description:"You can become a tree.")
god_of_war = Game.create(title:"God of War", description:"Angry father becomes slightly less angry.")
the_last_of_us = Game.create(title:"The Last of Us", description:"Father and daughter survive a deadly outbreak, except they're not related.")
okami = Game.create(title:"Okami", description:"A Zelda game, but with a wolf.")
super_smash_bros_ultimate = Game.create(title:"Super Smash Bros Ultimate", description:"Everyone thinks they're the best but I'm actually the best.")
undertale = Game.create(title:"Undertale", description:"That game with that one meme song you've probably heard.")
sly_cooper = Game.create(title:"Sly Cooper", description:"Think Spike Spiegel as a raccoon.")
metal_gear_solid = Game.create(title:"Metal Gear Solid", description:"Fission Mailed.")

UserGame.create(user_id:1,game_id:1)
UserGame.create(user_id:1,game_id:10)
UserGame.create(user_id:1,game_id:4)
UserGame.create(user_id:1,game_id:8)
UserGame.create(user_id:2,game_id:7)
UserGame.create(user_id:2,game_id:3)
UserGame.create(user_id:2,game_id:2)
UserGame.create(user_id:3,game_id:7)
UserGame.create(user_id:3,game_id:5)
UserGame.create(user_id:4,game_id:8)
UserGame.create(user_id:4,game_id:9)
UserGame.create(user_id:4,game_id:1)
UserGame.create(user_id:5,game_id:5)
UserGame.create(user_id:5,game_id:10)
UserGame.create(user_id:5,game_id:4)
UserGame.create(user_id:6,game_id:6)
UserGame.create(user_id:6,game_id:2)
UserGame.create(user_id:6,game_id:9)



