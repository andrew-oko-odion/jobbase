# Preview all emails at http://localhost:3000/rails/mailers/jobseeker_mailer
class JobseekerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/jobseeker_mailer/notification
  def notification
    JobseekerMailer.notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/jobseeker_mailer/job_suggestions
  def job_suggestions
    JobseekerMailer.job_suggestions
  end

end
