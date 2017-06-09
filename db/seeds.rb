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
SortOrder.create([{clause: 'not requirement'}, {clause: 'valid entry'}, {clause: 'call for next stage'}])

Accounting | Audit | Tax
Administration & Office Support
Agriculture | Farming
Banking | Finance | Insurance
Building Design | Architecture
Construction
Consulting | Business Strategy & Planning
Creatives(Arts, Design, Fashion)
Customer Service
Education | Teaching|Training
Engineering
Executive | Top Management
Healthcare | Pharmaceutical
Hospitality | Leisure | Travels
Human Resources
Information Technology
Legal
Logistics | Transportation
Manufacturing | Production
Marketing | Advertising | Communications
NGO | Community Services & Dev
Oil&Gas | Mining | Energy
Project | Programme Management
QA&QC | HSE
Real Estate | Property
Research
Sales | Business Development
Supply Chain | Procurement
Telecommunications
Vocational Trade and Services
