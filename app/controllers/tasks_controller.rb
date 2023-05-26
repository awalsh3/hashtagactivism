class TasksController < ApplicationController
#   def index
#     @cause = Cause.find(params[:cause_id])
#     @tasks = Task.all
#     if params[:max_time]
#       @tasks = @tasks.where('time <= ?', params[:max_time])
#     end
#   end
# end

  def index
    @cause = Cause.find(params[:cause_id])
    @tasks = @cause.tasks.order(time: :asc)
    @organizations = @cause.organizations
    @user = current_user
    max_time = params[:max_time]
    if params[:max_time]
      @tasks = @tasks.where('time <= ?', max_time).order(time: :asc)
    end
  end
end
