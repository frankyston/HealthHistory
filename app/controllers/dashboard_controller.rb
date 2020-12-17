class DashboardController < ApplicationController
  def index
    @treatments = Treatment.where(consultation_id: current_user.consultations)
    @exams = Exam.where(consultation_id: current_user.consultations)
    @consultations = current_user.consultations
  end
end
