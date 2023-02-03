class CausesController < ApplicationController
 USER_CAUSES = []

  def index
    @causes = Cause.all
    @time = 0
  end

  def show
    @cause = Cause.find(params[:id])
  end

  def choose_cause
    @causes = Cause.all
    params[:id].present? ? @cause = Cause.find(params[:id]) : @cause = USER_CAUSES[0]
    USER_CAUSES << @cause
    @selected_causes = USER_CAUSES.uniq()
    render :index
  end

  def choose_time
    @causes = Cause.all
    @time = params[:time]
    render :index
  end

end
