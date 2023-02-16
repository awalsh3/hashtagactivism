class UsersController < ApplicationController

  def store_tasks
    params[:store_tasks][:task_ids].reject(&:blank?).each do |id|
      Action.create(task_id: id, user_id: current_user.id, completed: true)
    end

  end

  private
  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end

end
