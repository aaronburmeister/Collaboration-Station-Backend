# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Image.destroy_all
Request.destroy_all
User.destroy_all

#Requestors
corey = User.create(username: "corey-the-cowboy", password: "imacowboy", email: "contact@coreyhodge.net", isArtist: false)
shadowblade = User.create(username: "xX ShadowBlade69 Xx", password: "artoftheblade", email: "contact@artoftheblade.net", isArtist: false)
mike = User.create(username: "mike-the-new-man", password: "ropemaster", email: "contact@michaelnewman.net", isArtist: false)
adam = User.create(username: "The Shapster", password: "notmyfirstrodeo", email: "contact@becauseimshappy.net", isArtist: false)

# Artists
jorge = User.create(username: "jazzy-jorge", password: "theyoungone", email: "contact@ibrokemycomputer.net", isArtist: true)
kyle = User.create(username: "KILLERkyle!", password: "knifefighter", email: "contact@kylecoberly.net", isArtist: true)
miwha = User.create(username: "mischievous-miwha", password: "designgod", email: "contact@miwha.co", isArtist: true)

# Requests
Request.create(user: mike, title: "Red Dragonborn Artificer", description: "My red dragonborn is very strong and wears a black cloak to conceal a scar on his face. He should be positioned standing on top of a small pile of dead goblins that he has recently killed, holding one of his creations in his hand triumphantly in the air.", status: "Open")
Request.create(user: shadowblade, title: "Mountain Dwarf Samurai - Angus Precisword", description: "While the other dwarves studied bleak stone, my dwarf mastered the art of the blade. He wears a metallic fedora and dual-wields katanas crafted with the blood of an ancient dragon and the Demon Lord Orcus.", status: "Booked")
Request.create(user: corey, title: "Human Cowboy - Michael Nimbus", description: "Michael is a man from the future stuck in the Wild West. He's converted his laser handguns to look like old-timey revolvers to avoid suspicion. Anyone who has seen the guns fire doesn't live to tell the tale.", status: "Completed")
Request.create(user: adam, title: "Gnome Grandma", description: "Just looking for a quick sketch of an npc from my campaign - I'd like her to have a custom token because the characters have gotten very attached to her.", status: "Open")

# Artist Image Portfolios
Image.create(user: jorge, imageURL: "https://cdna.artstation.com/p/assets/images/images/000/413/472/large/manuel-gonzalez-2.jpg?1421543448")
Image.create(user: jorge, imageURL: "https://cdnb.artstation.com/p/assets/images/images/004/955/937/large/thomas-krenz-dave-s-character-rr.jpg?1487455785")
Image.create(user: jorge, imageURL: "https://i.pinimg.com/originals/5e/4f/50/5e4f50dda3e0ffa5bbbfa3b9fcdbb828.jpg")
Image.create(user: jorge, imageURL: "https://66.media.tumblr.com/aaed27201e261394b91c3efde70696c6/tumblr_p2oapfDueK1ucrvgpo1_1280.jpg")
Image.create(user: kyle, imageURL: "https://pm1.narvii.com/7282/c7f3e90770d5ee336aaf1c3e1d63be087abd31e9r1-2000-2000v2_uhq.jpg")
Image.create(user: kyle, imageURL: "https://cdna.artstation.com/p/assets/images/images/007/912/996/large/josefine-persson-character02.jpg?1509316851")
Image.create(user: kyle, imageURL: "https://i.redd.it/842pqwrdhlc11.png")
Image.create(user: miwha, imageURL: "https://i.pinimg.com/originals/96/50/31/965031eca51159851e18804bf59262f5.jpg")
Image.create(user: miwha, imageURL: "https://66.media.tumblr.com/4b246ded4332ff9a889902a0c02c74c7/tumblr_pg3q0ruxtf1uew1aqo1_500.jpg")
Image.create(user: miwha, imageURL: "https://pbs.twimg.com/media/EFelZomX4AMEAHQ.jpg")
Image.create(user: miwha, imageURL: "https://i.pinimg.com/736x/ba/cc/cf/bacccf7fd17081e1dcf18feddd47ff52.jpg")
Image.create(user: miwha, imageURL: "https://i.redd.it/dtpfnybciqv21.png")