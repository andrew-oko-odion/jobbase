# coding: utf-8

# EmailType.create!([{title: 'Accepted'}, {title: 'Interview invite'}, {title: 'Rejected'}, {title: 'Not Requirement'}])
# EmailDefault.create!({title: 'Accepted', body: <<~HEREDOC
#                         Hey Candidate,
#                             Thanks for stopping by the Mirror site and submitting your info! It’s always great to meet a new developer :) It looks like you're located in Nigeria, is that right? Is there a strong Rails community there?

# I'd be happy to keep an eye out for opportunities that would be interesting to you! Unfortunately, our current startups are located within the US and are looking for developers to work on-site.

# With that said, you never know what the future may hold so I'd love to keep in touch in case anything comes along that sounds like it'd be up your alley!

# Best,
# Elizabeth
#  HEREDOC
#                     })



#           EmailDefault.create!([{title: 'Interview invite', body: <<~HEREDOC
#                         Hey Candidate,
#                             Thanks for stopping by the Mirror site and submitting your info! It’s always great to meet a new developer :) It looks like you're located in Nigeria, is that right? Is there a strong Rails community there?

# I'd be happy to keep an eye out for opportunities that would be interesting to you! Unfortunately, our current startups are located within the US and are looking for developers to work on-site.

# With that said, you never know what the future may hold so I'd love to keep in touch in case anything comes along that sounds like it'd be up your alley!

# Best,
# Elizabeth
#  HEREDOC
#                               }, {title: 'Rejected', body: <<~HEREDOC
#                                                           Hey Candidate,
#                             Thanks for stopping by the Mirror site and submitting your info! It’s always great to meet a new developer :) It looks like you're located in Nigeria, is that right? Is there a strong Rails community there?

# I'd be happy to keep an eye out for opportunities that would be interesting to you! Unfortunately, our current startups are located within the US and are looking for developers to work on-site.

# With that said, you never know what the future may hold so I'd love to keep in touch in case anything comes along that sounds like it'd be up your alley!  
#                                     HEREDOC
#                                   }, {title: 'Not Requirement', body: <<~HEREDOC
#                                                                Hey Candidate,
#                             Thanks for stopping by the Mirror site and submitting your info! It’s always great to meet a new developer :) It looks like you're located in Nigeria, is that right? Is there a strong Rails community there?

# I'd be happy to keep an eye out for opportunities that would be interesting to you! Unfortunately, our current startups are located within the US and are looking for developers to work on-site.

# With that said, you never know what the future may hold so I'd love to keep in touch in case anything comes along that sounds like it'd be up your alley!
#                                        HEREDOC
#                                      }])
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Job.create([{ title: 'Software Engineer', description: "this is a test case of how to use a Software and you will be employed for software testing", location: "lagos", application_email: "software@mail.com", company_name: 'carrotcity', salary: 35000, job_type_id: 2, job_category_id: 1, closing_date: "2017-02-28 14:39:29"},  { title: 'Electrical Engineer', description: "this is a test case of how to use a Software and you will be employed for software testing", location: "Abuja", application_email: "software@mail.com", company_name: 'mangocity', salary: 30000, job_type_id: 3, job_category_id: 1, closing_date: "2017-02-28 14:39:29"}, { title: 'Accountant', description: "this is a test case of how to use a Software and you will be employed for software testing and Biscuit selling", location: "Abia", application_email: "mailman@mail.com", company_name: 'buscuitcity', salary: 20000,  job_type_id: 2, job_category_id: 3, closing_date: "2017-02-28 14:39:29"}, { title: 'Pilots', description: "We need Pilots to do a test case of our new plane he will also need to know how to use the plane Software it is automated", location: "London", application_email: "pilot@wefly.com", company_name: 'carrotcity' , job_type_id: 1, job_category_id: 2, closing_date: "2017-02-28 14:39:29", salary: 20000}])


# JobType.create([{title: 'Open Jobs'}, {title: 'Paid Internships'}])

# JobCategory.create([{}, {}, {}])
### Create sort order for candidates 
# SortOrder.create([{clause: 'not requirement'}, {clause: 'valid entry'}, {clause: 'call for next stage'}])

# Question.create!([{
#   "title": "Assistant Manager",
#   "body": "Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.",
#   "tag": "brand interactive communities"
# }, {
#   "title": "Administrative Officer",
#   "body": "Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.",
#   "tag": "mesh B2C solutions"
# }, {
#   "title": "Registered Nurse",
#   "body": "Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.",
#   "tag": "optimize efficient supply-chains"
# }, {
#   "title": "Nuclear Power Engineer",
#   "body": "Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.",
#   "tag": "extend collaborative supply-chains"
# }, {
#   "title": "Pharmacist",
#   "body": "Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.",
#   "tag": "incubate one-to-one convergence"
# }, {
#   "title": "Associate Professor",
#   "body": "Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.",
#   "tag": "disintermediate magnetic infomediaries"
# }, {
#   "title": "Account Executive",
#   "body": "Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
#   "tag": "productize collaborative e-commerce"
# }, {
#   "title": "Business Systems Development Analyst",
#   "body": "Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.",
#   "tag": "seize robust deliverables"
# }, {
#   "title": "Data Coordiator",
#   "body": "Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.",
#   "tag": "deploy user-centric e-business"
# }, {
#   "title": "Account Representative III",
#   "body": "Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
#   "tag": "repurpose value-added infrastructures"
#                   }])

# Comment.create!([{
#    body: "Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",
#   question_id: 1, jobseeker_id: 1
#  }, {
#    body: "Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.",
#      question_id: 2, jobseeker_id: 2
#  }, {
#    body: "In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.",
#      question_id: 3, jobseeker_id: 3
#  }, {
#    body: "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
#      question_id: 4, jobseeker_id: 4
#  }, {
#    body: "Sed ante. Vivamus tortor. Duis mattis egestas metus.",
#      question_id: 5, jobseeker_id: 5
#  }, {
#    body: "Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.",
#      question_id: 6, employer_id: 1
#  }, {
#    body: "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",
#      question_id: 7, employer_id: 2
#  }, {
#    body: "Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
#      question_id: 8, employer_id: 3
#  }])


# JobCategory.create!([ { title: "Accounting | Audit | Tax"},
# { title: "Administration & Office Support"},
# { title: "Agriculture | Farming" },
# { title: "Banking | Finance | Insurance" }, 
# { title: "Building Design | Architecture" }, 
# { title: "Construction" },
# { title: "Consulting | Business Strategy & Planning" },
# { title: "Creatives(Arts, Design, Fashion) " },
# { title: "Customer Service" },
# { title: "Education | Teaching|Training" },
# { title: "Engineering" },
# { title: "Executive | Top Management" }, 
# { title: "Healthcare | Pharmaceutical" },
# { title: "Hospitality | Leisure | Travels"}, 
# { title: "Human Resources"}, 
# { title: "Information Technology"},
# { title: "Legal"}, 
# { title: "Logistics | Transportation"},
# { title: "Manufacturing | Production"}, 
# { title: "Marketing | Advertising | Communications"},
# { title: "NGO | Community Services & Dev"},
# { title: "Oil&Gas | Mining | Energy"}, 
# { title: "Project | Programme Management"},
# { title: "QA&QC | HSE"},
# { title: "Real Estate | Property"}, 
# { title: "Research" }, 
# { title: "Sales | Business Development" }, 
# { title: "Supply Chain | Procurement"}, 
# { title: "Telecommunications"}]);


JobExperience.create!([
                    {title: "0 -- 2 years"},
		    {title: "2 -- 4 years"},
		    {title: "4 -- And Above"}
                    ])
