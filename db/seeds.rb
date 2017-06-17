# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Job.create([{ title: 'Software Engineer', description: "this is a test case of how to use a Software and you will be employed for software testing", location: "lagos", application_email: "software@mail.com", company_name: 'carrotcity', salary: 35000, job_type_id: 2, job_category_id: 1, closing_date: "2017-02-28 14:39:29"},  { title: 'Electrical Engineer', description: "this is a test case of how to use a Software and you will be employed for software testing", location: "Abuja", application_email: "software@mail.com", company_name: 'mangocity', salary: 30000, job_type_id: 3, job_category_id: 1, closing_date: "2017-02-28 14:39:29"}, { title: 'Accountant', description: "this is a test case of how to use a Software and you will be employed for software testing and Biscuit selling", location: "Abia", application_email: "mailman@mail.com", company_name: 'buscuitcity', salary: 20000,  job_type_id: 2, job_category_id: 3, closing_date: "2017-02-28 14:39:29"}, { title: 'Pilots', description: "We need Pilots to do a test case of our new plane he will also need to know how to use the plane Software it is automated", location: "London", application_email: "pilot@wefly.com", company_name: 'carrotcity' , job_type_id: 1, job_category_id: 2, closing_date: "2017-02-28 14:39:29", salary: 20000}])


# JobType.create([{title: 'Open Jobs'}, {title: 'Paid Internships'}])

# JobCategory.create([{}, {}, {}])
### Create sort order for candidates 
# SortOrder.create([{clause: 'not requirement'}, {clause: 'valid entry'}, {clause: 'call for next stage'}])

Question.create!([{
  "title": "Assistant Manager",
  "body": "Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.",
  "tag": "brand interactive communities"
}, {
  "title": "Administrative Officer",
  "body": "Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.",
  "tag": "mesh B2C solutions"
}, {
  "title": "Registered Nurse",
  "body": "Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.",
  "tag": "optimize efficient supply-chains"
}, {
  "title": "Nuclear Power Engineer",
  "body": "Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.",
  "tag": "extend collaborative supply-chains"
}, {
  "title": "Pharmacist",
  "body": "Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.",
  "tag": "incubate one-to-one convergence"
}, {
  "title": "Associate Professor",
  "body": "Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.",
  "tag": "disintermediate magnetic infomediaries"
}, {
  "title": "Account Executive",
  "body": "Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
  "tag": "productize collaborative e-commerce"
}, {
  "title": "Business Systems Development Analyst",
  "body": "Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.",
  "tag": "seize robust deliverables"
}, {
  "title": "Data Coordiator",
  "body": "Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.",
  "tag": "deploy user-centric e-business"
}, {
  "title": "Account Representative III",
  "body": "Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
  "tag": "repurpose value-added infrastructures"
                  }])

Reply.create!([{
   body: "Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",
  question_id: 1
 }, {
   body: "Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.",
     question_id: 2
 }, {
   body: "In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.",
     question_id: 3
 }, {
   body: "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
     question_id: 4
 }, {
   body: "Sed ante. Vivamus tortor. Duis mattis egestas metus.",
     question_id: 5
 }, {
   body: "Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.",
     question_id: 6
 }, {
   body: "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",
     question_id: 7
 }, {
   body: "Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
     question_id: 8
 }, {
   body: "Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.",
     question_id: 9
 }, {
   body: "Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.",
     question_id: 10
 }])



# Accounting | Audit | Tax
# Administration & Office Support
# Agriculture | Farming
# Banking | Finance | Insurance
# Building Design | Architecture
# Construction
# Consulting | Business Strategy & Planning
# Creatives(Arts, Design, Fashion)
# Customer Service
# Education | Teaching|Training
# Engineering
# Executive | Top Management
# Healthcare | Pharmaceutical
# Hospitality | Leisure | Travels
# Human Resources
# Information Technology
# Legal
# Logistics | Transportation
# Manufacturing | Production
# Marketing | Advertising | Communications
# NGO | Community Services & Dev
# Oil&Gas | Mining | Energy
# Project | Programme Management
# QA&QC | HSE
# Real Estate | Property
# Research
# Sales | Business Development
# Supply Chain | Procurement
# Telecommunications
# Vocational Trade and Services
