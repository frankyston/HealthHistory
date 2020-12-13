class DashboardController < ApplicationController
  def index
    @treatments = current_user.treatments
    @exams = current_user.exams
    @consultations = current_user.consultations
  end
end
