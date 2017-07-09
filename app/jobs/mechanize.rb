# class HotNigerianJobs
#     # Note: its an Activejob class 
#   require 'mechanize'
#   attr_accessor :index, :base_url, :description, :close_date, :base_url = "http://hotnigerianjobs.com"

#   def initialize
#     agent = Mechanize.new
#     @index = agent.get(:base_url).search(".middlecol .mycase .jobheader a")
#     # @index.each {|f| p f['href'] }
#   end

  
  
#   # Handles the loop
#   def main
#     # if no close date was set make close date to be scrape date + two weeks
#     # if it has multiple positions scape them all and continue from where you stoped
#     # set unique field in the database to avoid duplicates. The job id eg 'job/1234/' is unique use it. 
#     # scrap once every day
#     # Handle fail safe exceptions to ensure its runs smoothly
#     # Ensure data writen to database is consistent with what you want.
    
#     @index.each do |j|
#       # if no email address cancel scraping that job
#       j = agent.get(j)
#       if has_no_email?(j) || !has_multiple_positions?(j)
#         next
#       elsif has_multiple_positions?(j) 
#         next 
#       eleif has_no_email?(j) == false
#         extract_job(m)
#       else
#         next
#       end
#     end

#     def extract_job(index)
#       # @multi_job.each do |m|
#       title = get_title
#       description = get_job_description
#       # set close date
#       # get
#       #end
#     end

    
#     # Scraping routine.........
#     def nop(ar) 
#       ar.each do |f| 
#         if f.kind_of?Array
#           f.each {  |k| 
#             p k 
#           end
#         else 
#           p f 
#         end
#       end
#     end

    
#   #every job links I visit
#   #do the following
#   #  get its details
#   #  but if has_multiple_posionions
#   #  process it and continue in the loop path
#   #end

#   def has_multiple_positions?
#    index = agent.get('http://www.hotnigerianjobs.com/hotjobs/118688/graduate-management-trainee-at-conoden-oil-limited.html').search(".mycase4")
#     index.at_css('#amazing').remove
#     return true if index.search("a")
#   end

#   def is_job_link?(link)
#     # checks if a link is a joblink or not
#   end
  
#   def get_emails
#    regex = /\w+@[\w.-]+|\{(?:\w+, *)+\w+\}@[\w.-]+/
#    result = regex.match(index.inner_text)
#   end
  
#   def has_no_email?
#     get_emails ? true : false 
#   end

#   def get_title
#     index = agent.get('http://www.hotnigerianjobs.com/hotjobs/118688/graduate-management-trainee-at-conoden-oil-limited.html').search(".mycase .jobheader a").first 
#     @title = index.text
#   end

#   def get_job_description
#     index = agent.get('http://www.hotnigerianjobs.com/hotjobs/118688/graduate-management-trainee-at-conoden-oil-limited.html').search(".mycase4")
#     index.at_css('#amazing').remove
#     @description = index.inner_text
#     @decription 
#   end

#   def get_close_date
#     Regex for Date ...... todo 
#     Date.parse(@index.inner_text)
#   end

#   def set_close_date
#     Add two weeks if close date is not set
#     @close_date = Date.today + 14 
#   end

# end
