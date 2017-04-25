class JobsController < ApplicationController

  def index
    @jobs = Job.published.recent
  end

  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      flash[:alert] = "本职缺已经存档，暂不提供"
      redirect_to root_path
    end
  end

end
