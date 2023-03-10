class ActionsController < ApplicationController
  before_action :set_user, only: %i[index new create]
  # before_action :set_task, only: %i[index new create]

  def index
    @action = Action.all
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.create(task_id: @task.id, user_id: current_user.id, completed: true)
  end

  private
    def set_user
      @user = current_user
    end

  # def set_task
  #   @task = Task.find(params[:task_id])
  # end
end
