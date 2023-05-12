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
    @tasks = @cause.tasks
    if params[:max_time]
      @tasks = @tasks.where('time <= ?', params[:max_time])
    end
  end
end
