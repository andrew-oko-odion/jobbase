
json.jobs @jobs do |job|
  json.title job.title.capitalize 
  json.description job.description.capitalize
end
