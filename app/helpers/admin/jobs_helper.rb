module Admin::JobsHelper
  def render_job_status(job)
    if job.is_hidden
      awesome("lock")
    else
      awesome("globe")
    end
  end
end
