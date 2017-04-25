class JobsController < ApplicationController

  def index
    @jobs = Job.published.recent
  end

  def show
    @job = Job.find(params[:id])
  end

end
