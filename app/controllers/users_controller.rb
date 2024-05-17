# frozen_string_literal: true

class UsersController < ApplicationController
  def add_tasks
    @user = User.find(params[:id])
    tasks = Task.where(id: params[:task_ids])

    tasks.each do |task|
      @user.tasks << task unless @user.tasks.include?(task)
    end

    redirect_to @user, notice: 'Tasks have been added successfully.'
  end

  private

  def user_params
    params.require(:user).permit(:name, task_ids: [])
  end
end
