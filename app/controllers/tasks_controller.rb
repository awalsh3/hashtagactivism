# frozen_string_literal: true

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
    max_time = params[:max_time]
    return unless params[:max_time]

    @tasks = @tasks.where('time <= ?', max_time).order(time: :asc)
  end
end
