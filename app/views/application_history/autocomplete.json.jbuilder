json.items @job_search  do |application|
  json.title application.job.title
  json.url job_url(application.job.id)
end
