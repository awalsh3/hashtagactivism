class UsersController < ApplicationController

  def store_tasks
    # params[:task_ids].reject(&:blank?).each do |id|
      action = Action.create(task_id: id, user_id: current_user.id, completed: true)
      if action.sucess?
        flash.now = "succes!"
      else
        flash.now = "no sucess"
      end
    # end

  end

  private
  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end

end
