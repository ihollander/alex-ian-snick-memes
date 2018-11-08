Character.destroy_all
Show.destroy_all

s1 = Show.create(name: "Hey Arnold!", year_created: 1996)
s2 = Show.create(name: "Doug", year_created: 1991)
s3 = Show.create(name: "Recess", year_created: 1997)
s4 = Show.create(name: "Ren & Stimpy", year_created: 1991)

Character.create(name: "Arnold", gender: "M", show: s1)

Character.create(name: "Doug", gender: "M", show: s2)

Character.create(name: "Spinelli", gender: "F", show: s3)

Character.create(name: "Stimpy (you idiot)", gender: "M", species: "Cat", show: s4)