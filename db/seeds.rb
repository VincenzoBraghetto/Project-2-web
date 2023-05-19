# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1= RequestingUser.create(name: "Samus", last_name: "Paulicelli", email: "66samus@gmail.com", telephone: "+56975170547")
u2= RequestingUser.create(name: "Zbigniew", last_name: "Prominski", email: "zprom@gmail.com", telephone: "+56918573987")
u3= RequestingUser.create(name: "Thomas", last_name: "Lang", email: "tlang@gmail.com", telephone: "+56996830684")
u4= RequestingUser.create(name: "Zack", last_name: "Grooves", email: "zgrooves@gmail.com", telephone: "+56992516472")
u5= RequestingUser.create(name: "Ryan", last_name: "Berty", email: "rberty@gmail.com", telephone: "+56956476826")
u6= RequestingUser.create(name: "Adam", last_name: "Darski", email: "adarski@gmail.com", telephone: "+56987656432")
u7= RequestingUser.create(name: "David", last_name: "Diepold", email: "daviddiepold@gmail.com", telephone: "+56965423454")
u8= RequestingUser.create(name: "Anthony", last_name: "Barone", email: "abarone@gmail.com", telephone: "+56976545678")
u9= RequestingUser.create(name: "Jari", last_name: "Maempa", email: "wintersunjari@gmail.com", telephone: "+56987612543")
u10= RequestingUser.create(name: "Kai", last_name: "Hahto", email: "kaihahto@gmail.com", telephone: "+56998154762")

e1= Executive.create(name: "Corey", last_name: "Taylor", email: "ctaylor@gmail.com", telephone: "+56919864536")
e2= Executive.create(name: "Jay", last_name: "Weinberg", email: "jayweinberg@gmail.com", telephone: "+56976514253")
e3= Executive.create(name: "Joey", last_name: "Jordison", email: "joeyjordison@gmail.com", telephone: "+56965417893")
e4= Executive.create(name: "Shawn", last_name: "Crahan", email: "scrahan@gmail.com", telephone: "+56916537865")
e5= Executive.create(name: "Sebastian", last_name: "Lanser", email: "seblanser@gmail.com", telephone: "+56976514253")

s1= Supervisor.create(name: "Marthyn", last_name: "Jovanovic", email: "mjovanovic@gmail.com", telephone: "+56987143251")
s2= Supervisor.create(name: "Susuka", last_name: "Nakamoto", email: "sunakamoto@gmail.com", telephone: "+56998154637")
s3= Supervisor.create(name: "Moa", last_name: "Kikuchi", email: "moakikuchi@gmail.com", telephone: "+56991653746")

a1= Administrator.create(name: "Tak", last_name: "Matsumoto", email: "takmatsumoto@gmail.com", telephone: "+56971845362")



