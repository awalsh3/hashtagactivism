class TasksController < ApplicationController
  def index
    @cause = Cause.find(params[:cause_id])
    @tasks = Task.all
  end
end
