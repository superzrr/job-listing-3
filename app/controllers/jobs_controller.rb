class JobsController < ApplicationController

  def index
    @jobs = Job.all.recent
  end

  def show
    @job = Job.find(params[:id])
  end

end
