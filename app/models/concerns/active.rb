module Active
  extend ActiveSupport::Concern
  def active?()
    @job = Job.where(job_id: params[id])
    @job.each do |f| 
      if !(f.created_at + 60 < day.now)
        @job.update_attributes({active: :false})
      end
    end
  end
end

