json.items @job_search  do |job|
  json.title job.title
  json.description job.description
  json.url job_url(job.id)
end




