# frozen_string_literal: true

class DashboardController < ApplicationController
  before_action :authenticate_user! # Ensure user is signed in

  def index
    # Fetch data related to the current user
    @causes = current_user.causes
    @tasks = current_user.tasks.order(time: :asc)
  end
end
