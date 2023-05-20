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

t1= Ticket.create(title: "Forgot password not working properly", description: "The forgot password functionality does not work when I click on it", state: "Open", tags: "Forgot password", priority: "High", response: "", attached_documents: "", executive_id: e3.id)
t2= Ticket.create(title: "User registration failure", description: "Users can't register for an account on the web application", state: "Open", tags: "Register, Users", priority: "Urgent", response: "", attached_documents: "", executive_id: e2.id)
t3= Ticket.create(title: "Create ticket button does not work", description: "Whenever i try to add a new ticket, the button for creating it does nothing", state: "Closed", tags: "Buttons, Tickets", priority: "Urgent", response: "Fixed, it was due to not updating the associated links when the respective resource was moved", attached_documents: "", executive_id: e1.id)
t4= Ticket.create(title: "Overall performance issues", description: "The web application functions slowly, when navigating on the application links take time to load", state: "Open", tags: "Performance", priority: "Normal", response: "", attached_documents: "", executive_id: e4.id)
t5= Ticket.create(title: "Error messages and alerts", description: "Sometimes i get huge error messages and can't access that specific part of the web application", state: "Closed", tags: "Errors, Troubleshooting", priority: "High", response: "Fixed, the problem was whenever an error ocurred, it was not showed to the user in a pleasant way, instead it showed programming errors", attached_documents: "", executive_id: e5.id)
t6= Ticket.create(title: "Compatibility issues for browsers", description: "The web application does not work properly when accessing it from different browsers such as Safari", state: "Open", tags: "Compatibility, Browsers", priority: "Normal", response: "it is currently being fixed, the web app works fine for Google Chrome for now", attached_documents: "", executive_id: e2.id)
t7= Ticket.create(title: "Data loss or corruption", description: "Users experience data loss or incorrect calculations and unexpected data behavior", state: "Open", tags: "Data loss", priority: "High", response: "", attached_documents: "", executive_id: e1.id)
t8= Ticket.create(title: "UX/UI problems", description: "Users find inconsistencies in using the user interface or experience such as confusing navigation or inconsistent design elements", state: "Open", tags: "UI, UX", priority: "Low", response: "", attached_documents: "", executive_id: e5.id)

c1= Comment.create(description: "Addressing the user registration failure is crucial as it directly impacts our user acquisition and conversion. Let's investigate the root cause and prioritize fixing it to ensure a seamless onboarding experience.", ticket_id: t2.id)
c2= Comment.create(description: "Broken buttons can negatively impact user experience and hinder navigation. It's important to identify and fix these broken buttons promptly to maintain the integrity of our application and provide a smooth browsing experience.", ticket_id: t3.id)
c3= Comment.create(description: "Slow performance can lead to user frustration and abandonment. We need to optimize the application's performance to ensure our users have a responsive and enjoyable experience. Let's allocate resources to identify performance bottlenecks and improve overall responsiveness.", ticket_id: t4.id)
c4= Comment.create(description: "Clear and informative error messages are essential for helping users understand and resolve issues effectively. Let's review the error messages and alerts to ensure they provide helpful guidance and minimize user confusion.", ticket_id: t5.id)
c5= Comment.create(description: "User interface and experience play a significant role in user satisfaction and engagement. Let's prioritize addressing UI/UX problems to provide an intuitive and seamless experience that keeps our users engaged and satisfied.", ticket_id: t8.id)
c6= Comment.create(description: "We are currently working on this, for a 100% functional app, you can use the application with Google Chrome in PC, other browsers or devices such as cellphones are not working properly at the moment", ticket_id: t6.id)

r1= Resolution.create(description: "The issue was the button was not working because it was not being redirected to the desired route, now it works and allows the user to add a new ticket", ticket_id: t3.id)
r2= Resolution.create(description: "The problem was the errors were shown as if the user was the programmer, it showed errors with the database when it should just say something along the lines of 'Error: that data does not exist' instead of a Rails error", ticket_id: t5.id)

f1= Feedback.create(evaluation: 5, comment: "Now the button works fine, thanks", ticket_id: t3.id)
f2= Feedback.create(evaluation: 4, comment: "I can see now that the errors are shown in a much more appropiate way, thanks for that", ticket_id: t5.id)
















