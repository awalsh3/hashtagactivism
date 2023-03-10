class CausesController < ApplicationController
  def index
    @causes = Cause.all
    @time = 0
  end

  def show
    @cause = Cause.find(params[:id])
  end
end
