class CommentsController < ApplicationController

  def create
    @job = Job.find(params[:comment][:job_id])
    @comment = @job.comments.create(comment_params)
    flash[:success] = "You successfully created a comment!"
    redirect_to company_job_path(@job.company, @job)
  end

  def comment_params
    params.require(:comment).permit(:content, :job)
  end

end
